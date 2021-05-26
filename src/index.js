require("dotenv").config();

const app = require("express")();

app.get("/", (request, response) => {
    response.json({
        message: "V4 Poc CI/CD using Github Actions is working!!!"
    })
})

app.listen(
    process.env.PORT, 
    () => console.log(`Application is running in address: ${process.env.APP_URL}`)
);