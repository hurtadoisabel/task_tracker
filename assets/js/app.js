// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html";
import jQuery from 'jquery';
window.jQuery = window.$ = jQuery;
import "bootstrap";
import _ from "lodash";

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

$(function() {
    function update_time(task){
        $.ajax(`${time_block_path}?task_id=${task_id}`), {
            method: "get",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            data: "",
            succes: (resp) => {
                let time_spent = 
                $('#time-spent').text()

            }
        }
    }

    $('#time-button').click((ev) => {
        let starttime = $('#start-time').val();
        let finishtime = $('#finish-time').val();
        let task_id = $(ev.target).data('task-id');

        let text = JSON.stringify({
            time_block: {
                task_id: task_id,
                init_time: starttime,
                end_time: finishtime,
            },
        });
    });
});