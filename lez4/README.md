# Lecture 4 Exercises
I describe briefly the exercises:
  
  1. Using surfl, the light help to overcome the difficulties in visualize the image, once removed the mesh.
  ![uooooops](https://github.com/mate377/Medical-Imaging-Exercises/blob/master/lez4/peaks.png "peaks images")
  
  2. The function uses as a model is a*sinc(b*x) . Parameter a provides the y scale, b the x scale. 
  If the fiugure wouldn't have been centered I could have used a function like a*sinc(b*(x+c))+d, with c and d setting the centering.
  I've indeed performed such a calculation showed in the tables. The sinc function is like sinc == sin(pi*x)/(pi*x) , I've
  been forced to use it because sin(0)/0 returns NaN and doesn't complete the fit. The fit in the figure use only two parameters.
  
  <table>
  <tr>
  <th>4 parameters fit</th>
  <th>2 parameters fit</th>
  </tr>
  <tr>
  <td>
  <table>
  <tr>
    <th>param</th>
    <th>value</th>
  </tr>
  <tr>
    <td>a</td>
    <td>9.938</td>
  </tr>
  <tr>
    <td>b</td>
    <td>9.981</td>
  </tr>
  <tr>
    <td>c</td>
    <td>0.001</td>
  </tr>
  <tr>
    <td>d</td>
    <td>-0.024</td>
  </tr>
</table>
</td>
<td>
<table>
  <tr>
    <th>param</th>
    <th>value</th>
  </tr>
  <tr>
    <td>a</td>
    <td>9.953</td>
  </tr>
  <tr>
    <td>b</td>
    <td>4.980</td>
  </tr>
</table>
</td>
</tr>
</table>

![uooooops](https://github.com/mate377/Medical-Imaging-Exercises/blob/master/lez4/fitfig.png "fitting the sinc")
