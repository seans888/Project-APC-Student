<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require_once 'path.php';
init_cobalt('ALLOW_ALL');

$html = new html;
$html->draw_header('About ' . GLOBAL_PROJECT_NAME, $message, $message_type);
$project_name = GLOBAL_PROJECT_NAME;
$msg=<<<EOD
<b>Student Assistant(SA)</b>

<br/><br />
<p>A student assistant is an APC bona fide student who is a recipient of the APC Student Assistant <p>financial scholarship and as part of the requirement to avail of such scholarship renders 10 of <p>on-campus work per term. A student assistant is under close supervision and in a learner <p>capacity, to assist in the performance of the duties required by the departmental assignment.</P>
<br /><b> $project_name is powered by Cobalt</b>
EOD;
$html->display_info($msg);

$html->draw_page_title('About Cobalt');
$msg=<<<EOD
Cobalt is a web-based code generator and framework using PHP and Oracle Database created by JV Roig.
It makes web-based systems maintainable, scalable, secure and efficient, and makes the life of developers a lot easier. <br><br>

<a href="http://cobalt.jvroig.com/co/download/" target="_blank">Download Cobalt</a> |
<a href="http://cobalt.jvroig.com/co/documentation/" target="_blank">Cobalt FAQ</a>
EOD;
$html->display_message($msg);
$html->draw_footer();
