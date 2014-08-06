/**
 * Created by user on 3/12/14.
 */
function url(controller, action, parameterString){
    var urlString = '/myproject/' + controller + '/' + action + '/' + parameterString;
    return(urlString);
}