const cds = require("@sap/cds");
const { Orders } = cds.entities("com.logali");

module.exports = (srv) => {
    // // ********  READ ******** //
    srv.on("READ", "Orders", async (req) => {
        return await SELECT.from(Orders);
    });

    // ******** CREATE ******** //
    srv.on("CREATE", "Orders", async (req) => {
        await cds.transaction(req).run(
            INSERT.into(Orders).entries({
                ID: req.data.ID,
                Email: req.data.Email,
                FirstName: req.data.FirstName,
                LastName: req.data.LastName,
                Country: req.data.Country,
                CreatedOn: req.data.CreatedOn,
                DeliveryDate: req.data.DeliveryDate,
                OrderStatus: req.data.OrderStatus,
                ImageUrl: req.data.ImageUrl

            })
        )
            .then((resolve, reject) => {
                console.log("Resolve", resolve);
                console.log("Reject", reject);
                if (typeof resolve !== 'undefined') {
                    return req.data;
                } else {
                    req.error(409, "Record Not Inserted");
                }
            })
            .catch((err) => {
                console.log(err);
                req.error(err.code, err.message);
            });
        console.log("Before End", req.data);
        return req.data;
    });
   

    // ******** UPDATE ******** //
    srv.on("UPDATE", "Orders", async (req) => {
        let returnData = await cds.transaction(req).run(
            [
                UPDATE(Orders, req.data.Email).set({
                    OrderStatus: req.data.OrderStatus
                }),
            ]
        ).then((resolve, reject) => {
            console.log("Resolve:", resolve);
            console.log("Reject:", reject);

            if (typeof resolve[0] == 0) {
                req.error(409, "Record Not Found");
            }
        }).catch((err) => {
            console.log(err);
            req.error(err.code, err.message);
        });
        console.log("Before End", returnData);
        return req.data;
    });

    // ******** DELETE ******** //
    srv.on("DELETE", "Orders", async (req) => {
        let returnData = await cds.transaction(req).run(
            DELETE.from(Orders).where({
                ID: req.data.ID,
            })
        ).then((resolve, reject) => {
            console.log("Resolve:", resolve);
            console.log("Reject:", reject);

            if (typeof resolve[0] == 0) {
                req.error(409, "Record Not Found");
            }
        }).catch((err) => {
            console.log(err);
            req.error(err.code, err.message);
        });
        console.log("Before End", returnData);
        return req.data;
    });
};

