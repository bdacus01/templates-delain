
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>


<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}
<footer style="background-color:#333333;padding:0px;margin-top:0px;">
        <div class="container">
            <div class="row" style="height:225px;">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 footer-navigation" style="height:225px;">
                    <h3 style="font-size:23px;margin-top:24px;"><img class="hidden-xs" style="background-image:url(&quot;{$WEB_ROOT}/templates/{$template}/assets/img/dhballtp.png&quot;);background-size:25px;background-position:center;width:47px;height:40px;"><a href="{$WEB_ROOT}/templates/{$template}/assets/img/small.png" style="font-family:Roboto, sans-serif;">Delain Hosting</a></h3>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 col-xs-pull-0 hidden-xs hidden-sm footer-contacts" style="height:225px;margin-top:0px;margin-bottom:33px;">
                    <h3 class="text-left" style="color:#ffffff;font-family:Roboto, sans-serif;">Contact Us</h3>
                    <div class="hidden-xs"><i class="fa fa-pencil-square-o footer-contacts-icon"></i>
                        <p>sales@delainhosting.com</p>
                    </div>
                    <div class="hidden-xs"><i class="fa fa-support footer-contacts-icon"></i>
                        <p>support@delainhosting.com</p>
                    </div>
                    <div class="hidden-xs"><i class="fa fa-clipboard footer-contacts-icon"></i>
                        <p>billing@delainhosting.com</p>
                    </div>
                </div>
                <div class="col-lg-4 col-lg-offset-0 col-md-4 col-md-offset-0 col-sm-4 col-xs-1 col-xs-offset-1 hidden-xs footer-contacts" style="height:225px;margin-left:0px;">
                    <h3 class="text-left" style="color:#ffffff;font-family:Roboto, sans-serif;margin-left:12px;">Legal</h3>
                    <ul class="list-unstyled" style="margin-bottom:0px;height:160px;font-size:14px;">
                        <li style="height:30px;width:300px;margin:0px;"><i class="fa fa-lock footer-contacts-icon" style="height:30px;width:30px;margin:5px;"></i><a href="https://delainhosting.com/tos.html" style="font-family:Roboto, sans-serif;color:#ffffff;">Terms of Service&nbsp;</a></li>
                        <li style="height:30px;width:300px;"><i class="fa fa-balance-scale footer-contacts-icon" style="width:30px;height:30px;margin:5px;"></i><a href="https://www.icann.org/resources/pages/benefits-2013-09-16-en" target="_blank" style="color:#ffffff;font-family:Roboto, sans-serif;">Registrant Rights</a></li>
                        <li
                            style="height:30px;width:300px;font-family:Roboto, sans-serif;"><i class="fa fa-book footer-contacts-icon" style="height:30px;width:30px;margin:5px;"></i><a href="https://www.icann.org/resources/pages/educational-2012-02-25-en" target="_blank" style="color:#ffffff;font-family:Roboto, sans-serif;">Registrant Educational Materials</a></li>
                            <li
                                style="height:30px;font-family:Roboto, sans-serif;margin-top:0px;width:300px;"><i class="fa fa-search footer-contacts-icon" style="width:30px;height:30px;margin:5px;"></i><a href="https://whois.icann.org/en" target="_blank" style="font-family:Roboto, sans-serif;color:#ffffff;">Whois Lookup</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="height:52px;background-color:#1f2021;padding:3px;padding-left:0px;padding-right:0px;">
            <p class="text-center company-name" style="font-size:16px;font-family:Montserrat, sans-serif;font-weight:normal;height:24px;margin-top:10px;">Delain Hosting llc © 2017</p>
        </div>
    </footer>
</body>
</html>
