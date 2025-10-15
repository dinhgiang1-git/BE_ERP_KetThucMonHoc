const nccController = require('../app/controller/nccController');
const khachHangController = require('../app/controller/khachHangController');


function api(app) {
    //Nhà cung cấp
    app.post('/api/NhaCungCap/create', nccController.createNcc);
    app.get('/api/NhaCungCap/get-all', nccController.getAllNcc);
    app.get('/api/NhaCungCap/get-by-id/:id', nccController.getNccById);
    app.patch('/api/NhaCungCap/update/:id', nccController.updateNcc);
    app.delete('/api/NhaCungCap/delete/:id', nccController.deleteNcc);

    //Khách hàng
    app.post('/api/KhachHang/create', khachHangController.createCustomers);
    app.get('/api/KhachHang/get-all', khachHangController.getAllCustomers);
    app.get('/api/KhachHang/get-by-id/:id', khachHangController.getCustomersById);
    app.patch('/api/KhachHang/update/:id', khachHangController.updateCustomers);
    app.delete('/api/KhachHang/delete/:id', khachHangController.deleteCustomers);
}

module.exports = api;