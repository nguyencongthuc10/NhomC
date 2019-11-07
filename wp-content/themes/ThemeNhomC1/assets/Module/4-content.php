<?php
$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';
preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);
?>

<div class="module-4">
<!--     <div class="qodef-sp-table">
        <div class="qodef-sp-table-cell">
            <div class="qodef-sp-inner">
                <a class="qodef-sp-close" href="javascript:void(0)">
                   <button type="button" class="close text-white" data-dismiss="modal">×</button>
                </a>
                <div class="qodef-sp-background" style="background-image: url(https://nille.qodeinteractive.com/wp-content/uploads/2019/08/Pop-up-img.jpg)"></div>
                <div class="qodef-sp-content-container">
                    <h5 class="qodef-sp-title">SUBSCRIBE TO NEWSLETTER</h5>
                    <div class="qodef-sp-subtitle">
                        Subscribe now and get 10% off new collection </div>
                    <div role="form" class="wpcf7" id="wpcf7-f11-o1" lang="en-US" dir="ltr">
                        <div class="screen-reader-response"></div>
                        <form action="#" method="post" class="wpcf7-form" novalidate="novalidate">
                            <div style="display: none;">
                                <input type="hidden" name="_wpcf7" value="11">
                                <input type="hidden" name="_wpcf7_version" value="5.1.4">
                                <input type="hidden" name="_wpcf7_locale" value="en_US">
                                <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f11-o1">
                                <input type="hidden" name="_wpcf7_container_post" value="0">
                            </div>
                            <div class="custom-email"><span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Enter-mail"></span><button type="submit" class="wpcf7-form-control wpcf7-submit qodef-btn-custom-border-hover qodef-btn-custom-hover-bg qodef-btn-custom-hover-color qodef-btn qodef-btn-medium"><span class="qodef-btn-text">SEND</span></button><span class="ajax-loader"></span></div>
                            <div class="wpcf7-response-output wpcf7-display-none"></div>
                        </form>
                    </div>
                    <div class="qodef-sp-prevent">
                        <div class="qodef-sp-prevent-inner">
                            <span class="qodef-sp-prevent-input" data-value="no">
                                <svg x="0px" y="0px" width="10.656px" height="10.692px" viewBox="0 0 10.656 10.692" enable-background="new 0 0 10.656 10.692" xml:space="preserve">
                                    <path d="M10.415,9.752c0.252,0.254,0.303,0.611,0.114,0.8l0,0c-0.188,0.188-0.545,0.136-0.798-0.118L0.242,0.913 C-0.011,0.658-0.062,0.3,0.127,0.111l0,0C0.316-0.075,0.673-0.023,0.926,0.23L10.415,9.752z"></path>
                                    <path d="M0.229,9.779c-0.253,0.253-0.305,0.609-0.117,0.799l0,0c0.188,0.189,0.545,0.138,0.799-0.115l9.515-9.495 c0.253-0.254,0.305-0.611,0.117-0.801l0,0C10.355-0.021,9.998,0.03,9.744,0.283L0.229,9.779z"></path>
                                </svg>
                            </span>
                            <label class="qodef-sp-prevent-label">Prevent This Pop-up</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
</div>
