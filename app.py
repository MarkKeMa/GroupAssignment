from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'xxx',  # Your MySQL password
    'database': 'xxx'   # Your database name
}

def get_db_connection():
    return mysql.connector.connect(**DB_CONFIG)

QUERY_LIST = [
    ("📈 Monthly Revenue",
     """
     SELECT 
         DATE_FORMAT(timestamp, '%Y-%m') AS revenue_month,
         SUM(amount) AS total_revenue
     FROM transaction
     GROUP BY revenue_month
     ORDER BY revenue_month;
     """,
     ["Month", "Total Revenue"]),

    ("💰 Top Spending Guests",
     """
     SELECT 
         g.guestId,
         g.name,
         SUM(t.amount) AS total_spent
     FROM guest g
     JOIN billing_party b ON g.billingPartyId = b.billingPartyId
     JOIN transaction t ON b.billingPartyId = t.billingId
     GROUP BY g.guestId, g.name
     ORDER BY total_spent DESC
     LIMIT 10;
     """,
     ["Guest ID", "Name", "Total Spent"]),

    ("📊 Room Occupancy",
     """
     SELECT 
         r.roomType,
         COUNT(res.reservationId) AS reservations_count,
         ROUND(COUNT(res.reservationId) / (COUNT(DISTINCT r.roomId) * 90) * 100, 2) AS occupancy_rate_percent
     FROM room r
     JOIN reservation res ON res.roomId = r.roomId
     GROUP BY r.roomType;
     """,
     ["Room Type", "Number of Reservations", "Occupancy Rate (%)"]),

    ("💳 Deposit Overview",
     """
     SELECT 
         r.roomType,
         ROUND(AVG(res.deposit), 2) AS avg_deposit
     FROM room r
     JOIN reservation res ON r.roomId = res.roomId
     GROUP BY r.roomType;
     """,
     ["Room Type", "Average Deposit"]),

    ("🛎️ Service Revenue",
     """
     SELECT 
         serviceType,
         COUNT(*) AS service_count,
         SUM(amount) AS total_service_income
     FROM service
     GROUP BY serviceType
     ORDER BY total_service_income DESC;
     """,
     ["Service Type", "Times Used", "Total Income"]),

    ("🍽️ Dining Stats",
     """
     SELECT 
         mealType,
         COUNT(*) AS dining_count,
         SUM(amount) AS total_dining_income
     FROM dining
     GROUP BY mealType
     ORDER BY total_dining_income DESC;
     """,
     ["Meal Type", "Number of Meals", "Total Dining Income"]),

    ("📆 Quarterly Breakdown",
     """
     SELECT 
         CONCAT('Q', QUARTER(timestamp), ' ', YEAR(timestamp)) AS quarter,
         type,
         COUNT(*) AS transaction_count,
         SUM(amount) AS total_revenue
     FROM transaction
     GROUP BY quarter, type
     ORDER BY quarter, type;
     """,
     ["Quarter", "Service Type", "Transaction Count", "Total Revenue"]),

    ("🛏️ Stay Duration",
     """
     SELECT 
         r.roomType,
         ROUND(AVG(DATEDIFF(res.endDate, res.startDate)), 2) AS avg_stay_days
     FROM room r
     JOIN reservation res ON r.roomId = res.roomId
     GROUP BY r.roomType;
     """,
     ["Room Type", "Average Stay Duration (Days)"])
]

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/query/<int:query_id>')
def run_query(query_id):
    try:
        conn = get_db_connection()
        cursor = conn.cursor()

        if 1 <= query_id <= len(QUERY_LIST):
            title, sql, labels = QUERY_LIST[query_id - 1]
            cursor.execute(sql)
            results = cursor.fetchall()
            original_columns = [desc[0] for desc in cursor.description]
            conn.close()

            readable_results = [
                dict(zip(labels, row)) for row in results
            ]

            return render_template('query.html', title=title, results=readable_results, columns=labels)
        else:
            return "Invalid Query ID", 404
    except Exception as e:
        return f"Error executing query: {str(e)}"

if __name__ == '__main__':
    app.run(debug=True)




