<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style type="text/css">
.padding {
    padding: 5rem !important;
    margin-left: 300px
}

.card {
    margin-bottom: 1.5rem
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #c8ced3;
    border-radius: .25rem
}

.card-header:first-child {
    border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0
}

.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    background-color: #f0f3f5;
    border-bottom: 1px solid #c8ced3
}

.card-body {
    flex: 1 1 auto;
    padding: 1.25rem
}

.form-control:focus {
    color: #5c6873;
    background-color: #fff;
    border-color: #c8ced3 !important;
    outline: 0;
    box-shadow: 0 0 0 #F44336
}

</style>
<meta charset="ISO-8859-1">
<title>Thank you for shopping with us</title>
</head>
<body>
<form action="./paycredit">
<div class="padding">
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-header">
                    <strong>Credit Card</strong>
                    <small>enter your card details</small>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input class="form-control" id="name" type="text" name="name" placeholder="Enter your name">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="ccnumber">Credit Card Number</label>
                                <div class="input-group">
                                    <input class="form-control" type="text" placeholder="0000 0000 0000 0000" autocomplete="email" name="cnum">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="mdi mdi-credit-card"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-4">
                            <label for="ccmonth">Month</label>
                            <select class="form-control" id="ccmonth">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-4">
                            <label for="ccyear">Year</label>
                            <select class="form-control" id="ccyear" name="ccyear">
                                <option>2014</option>
                                <option>2015</option>
                                <option>2016</option>
                                <option>2017</option>
                                <option>2018</option>
                                <option>2019</option>
                                <option>2020</option>
                                <option>2021</option>
                                <option>2022</option>
                                <option>2023</option>
                                <option>2024</option>
                                <option>2025</option>
                            </select>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="cvv">CVV/CVC</label>
                                <input class="form-control" id="cvv" type="text" placeholder="123">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-sm btn-success float-right" type="submit" onclick="./cod">
                        <i class="mdi mdi-gamepad-circle"></i> Continue</button>
                    <button class="btn btn-sm btn-danger" type="reset">
                        <i class="mdi mdi-lock-reset"></i> Reset</button>
                </div>
                <input type="text" name="address"value="${address }" style="visibility: hidden;">
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>