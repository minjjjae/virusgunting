<!DOCTYPE html>
<head>
    <title>CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
#header{
    font-size: 200%
    font:
}
  #tbl{
      margin-right:15%;
      margin-left:15%;
  }
  .btn-outline-secondary{
    float: center;
  }
  #bttn{
    margin-left: 45%;
    margin-right: 15%;
    width: 50%;
}
  
    </style>
  </head>
  
  <body>
  
  
    <p> </p>
  
    <header id="header">
        <h2> 야관문</h2>
    </header>
  
  
  
    <section>
        <nav id = "title">
            <h1>무좀 자가진단</h1>
        </nav>
  
        <article>
            <div id="tbl">
            <table class="table" style="margin-left: auto; margin-right: auto;">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">증상</th>
                        <th scope="col">여부</th>
  
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>3, 4, 5번째 발가락 사이가 가렵고 붉게 변했다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a1" id="q1" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="a1" id="q1" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>발바닥이나 발 옆면의 피부가 건조하거나 각질이 생겼다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a2" id="q2" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="a2" id="q2" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                        
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>증상 부위가 가렵거나 아프다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a3" id="q3" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="a3" id="q3" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>증상 부위가 작은 물집으로 덮여있다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a4" id="q4" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="a4" id="q4" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    <tr>
                        <th scope="row">5</th>
                        <td>발톱의 색깔이 변했다.</td>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="a5" id="q5" value="opt1">
                                <label class="form-check-label" for="inlineRadio1">예</label>
                            </div>
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="a5" id="q5" value="opt2">
                            <label class="form-check-label" for="inlineRadio1">아니오</label>
                            </div>
                        </td>
                        
                    </tr>
                    
                </tbody>
            </table> 
        </div>          
        </article>
    </section>
    <br>
    <br>
<div id="bttn">
    <button type="button" class="btn btn-outline-secondary">결과보기</button>
</div>
  </body>
  
  </html>