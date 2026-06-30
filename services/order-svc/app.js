const express = require('express');
const app = express();
app.use(express.json());

const orders = [
  { id: 1, product_id: 1, quantity: 2, status: "confirmed", total: 1999.98 },
  { id: 2, product_id: 2, quantity: 1, status: "shipped", total: 499.99 },
];

app.get('/health', (req, res) => {
  res.json({ status: 'healthy', service: 'order-svc' });
});

app.get('/orders', (req, res) => {
  res.json({ orders, count: orders.length });
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => console.log('Order service running on port ${PORT}'));
