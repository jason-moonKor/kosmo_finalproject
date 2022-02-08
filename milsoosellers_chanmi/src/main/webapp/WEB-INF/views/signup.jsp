<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/signup.css"> -->
    <style>
      li {
        list-style: none;
        float: left;
        text-align: left;
      }
      ul {
        clear: left;
      }

      .outer {
        display: flex;
      }

      .inner {
        margin: 0 auto;
      }
      .th {
        width: 200px;
        height: 40px;
        background: ghostwhite;
        border-top: solid 1px gainsboro;
        vertical-align: middle;
        font-size: 12px;
        line-height: 40px;
        padding-left: 5px;
      }
      .td {
        width: 300px;
        padding: 7px;
        border-top: solid 1px gainsboro;
      }
      .size_phone {
        width: 40px;
      }
      .size_mail1 {
        width: 80px;
      }
      input {
        border: none;
        border-bottom: solid 1px gainsboro;
      }
      .clear {
        clear: both;
      }
      #register {
        width: 520px;
        background-color: #6DB800;
        height: 35px;
        color: honeydew;
        font-size: 15px;
        font-weight: 900;
        border: none;
        margin-top: 20px;
        margin-left: 40px;
      }
      #find_email {
        width: 90px;
      }
      #phone {
      	color: honeydew;
        background-color: #6DB800;
        border: none;
        font-size: 5px;
        padding: 5px;
        font-weight: 900;
      }
      #required {
      	font-size: 10px;
      	padding: 3px;
      	float: right;
      }
      input[type="date" i] {
    align-items: center;
    display: -webkit-inline-flex;
    font-family: "Roboto Slab", -apple-system, BlinkMacSystemFont, "Segoe UI",
        Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
        "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    padding-inline-start: 1px;
    cursor: default;
    overflow: hidden;
    padding: 0px;
    font-weight: 200;
}
    </style>
  </head>
  
    <%
    request.setCharacterEncoding("UTF-8");
	%>
  <body>
    <div class="outer">
      <div class="title_container inner">
        <form
          method="post"
          action="/register"
        >
          <div id="formMemberArea" class="resp_member_join">
            <div>
              <h4 style="text-align: center; margin-left: 40px;">
                <span
                  >회원정보 입력</span
                >
              </h2>
              <ul>
                <li >
                <div id="required">                
                  <font color="red">*</font>필수입력사항
                </div>
                </li>
              </ul>
            </div>
            <div class="resp_join_table cardview_line">
              <ul class="required">
                <li class="th">아이디*</li>
                <li class="td">
                  <input
                  name="member_id"
                    style="width: 250px"
                    type="text"
                    placeholder="공백 없는 영문/숫자 포함 6~20자"
                  />
                </li>
              </ul>
              <ul class="required">
                <li class="th">비밀번호*</li>
                <li class="td">
                  <input
                    style="width: 250px"
                    type="password"
                    name="mem_passwd"
                    placeholder="공백 없는 영문/숫자 포함 6~20자"
                  />
                </li>
              </ul>
              <ul class="required">
                <li class="th">비밀번호 확인*</li>
                <li class="td">
                  <input
                    style="width: 250px"
                    type="password"
                    name="re_password"
                    placeholder="비밀번호 확인"
                  />
                </li>
              </ul>
              <ul class="required">
                <li class="th">이름*</li>
                <li class="td">
                  <input type="text" name="mem_name" maxlength="20" />
                </li>
              </ul>
              <ul class="required">
                <li class="th">이메일*</li>
                <li class="td">
                  <input
                    type="email"
                    name="email0"
                    maxlength="20"
                    value=""
                    class="size_mail1"
                  />
                  @
                  <input
                    type="email"
                    name="email1"
                    maxlength="20"
                    value=""
                    class="size_mail1"
                  />
                  <select style="font-size: 11px; padding: 2px;" name="find_email" id="find_email">
                    <option value="">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="nate.com">nate.com</option>
                    <option value="dreamwiz.com">dreamwiz.com</option>
                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                    <option value="empal.com">empal.com</option>
                    <option value="unitel.co.kr">unitel.co.kr</option>
                    <option value="gmail.com">gmail.com</option>
                    <option value="korea.com">korea.com</option>
                    <option value="chol.com">chol.com</option>
                    <option value="paran.com">paran.com</option>
                    <option value="freechal.com">freechal.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="hotmail.com">hotmail.com</option>
                  </select>
                </li>
              </ul>
              <ul class="required">
                <li class="th">휴대폰번호*</li>
                <li class="td">
                  <input type="hidden" name="_htelAuthNum" value="" />
                  <input
                    type="tel"
                    name="mem_tel"
                    value=""
                    class="size_phone"
                    maxlength="4"
                    readonly="readonly"
                  />
                  -
                  <input
                    type="tel"
                    name="cellphone[]"
                    value=""
                    onclick="sms_auth_popup();"
                    class="size_phone"
                    maxlength="4"
                    readonly="readonly"
                  />
                  -
                  <input
                    type="tel"
                    name="cellphone[]"
                    value=""
                    onclick="sms_auth_popup();"
                    class="size_phone"
                    maxlength="4"
                    readonly="readonly"
                  />
                  <script>
                    $("input[name='cellphone[]']").attr('readonly', true);
                  </script>
                  <button
                    type="button"
                    id="phone"
                  >
                    <span
                      >휴대폰인증</span
                    >
                  </button>
                </li>
              </ul>
              <ul>
                <li class="th">생년월일*</li>
                <li class="td">
                    <label for="bday">
                      <input
                        type="date"
                        name="bday"
                        pattern="\d{4}-\d{2}-\d{2}"
                      />
                      <span class="validity"></span>
                    </label>
                </li>
              </ul>
              <ul>
                <li class="th">성별*</li>
                <li class="td designed_radio_checkbox join_form type_radio">
                  <label
                    ><input type="radio" name="sex" value="male" />
                    <span style="font-size: 13px;"
                      >남성</span
                    ></label
                  >
                  <label
                    ><input type="radio" name="sex" value="female" />
                    <span style="font-size: 13px;">여성</span
                    ></label
                  >
                </li>
              </ul>
              <!-- <ul>
                        <li class="th ">
                                추천인ID
                        </li>
                        <li class="td">
                            <input type="text" name="recommend" id="recommend" value="" style="width:100px;">
                            <button type="button" onclick="chkRecommend('u');" class="btn_resp size_b">확인</button>
                            <p id="recommend_return_txt" class="guide_text"></p>
                            <ul class="list_01 v3 desc pd_1">
                                <li>
                                    <p designelement="text" textindex="33"
                                        texttemplatepath="cmVzcG9uc2l2ZV92ZXIxX2RlZmF1bHRfZ2wvbWVtYmVyL3JlZ2lzdGVyX2Zvcm0uaHRtbA==">
                                        추천인ID 입력시 - 마일리지 <span class="pointcolor">1,000</span>원 추가지급</p>
                                </li>
                                <li>
                                    <p designelement="text" textindex="34"
                                        texttemplatepath="cmVzcG9uc2l2ZV92ZXIxX2RlZmF1bHRfZ2wvbWVtYmVyL3JlZ2lzdGVyX2Zvcm0uaHRtbA==">
                                        추천받은 회원 - 마일리지 <span class="pointcolor2">1000</span>원 지급</p>
                                </li>
                            </ul>
                        </li>
                    </ul> -->
            </div>
          </div>
        <div class="clear"></div>
        <div class="outer">
          <div class="inner">
            <button type="submit" id="register">
              <span>동의하고 회원가입</span>
            </button>
          </div>
        </div>
        </form>
      </div>
    </div>
    <!--  -->
    <!-- /필수사항 -->

    <script type="text/javascript">
      /* $(function () {
        // 약관 전체동의
        $('#agreeall').on('change', function () {
          if ($(this).prop('checked')) {
            $('.personal_info_area').slideDown(300);
            $('.personal_check_box > li > input[type=checkbox]').prop(
              'checked',
              true
            );
          } else {
            $('.personal_info_area').slideUp(300);
            $('.personal_check_box > li > input[type=checkbox]').prop(
              'checked',
              false
            );
          }
        });
        // 개별 약관 선택시
        $('.personal_check_box > li > input[type=checkbox]').on(
          'change',
          function () {
            if ($('#sms').prop('checked') || $('#mailing').prop('checked')) {
              $('#agreeall').prop('checked', true);
            } else {
              $('.personal_info_area').slideUp(300);
              $('#agreeall').prop('checked', false);
            }
          }
        );
        $('.selectLabelSet').each(function () {
          var selectLabelSetObj = $(this);
          $('select.selectLabelDepth1', selectLabelSetObj)
            .bind('change', function () {
              var childs = $('option:selected', this).attr('childs').split(';');
              var joinform_seq = $(this).attr('joinform_seq');
              var select2 = $(
                "input.hiddenLabelDepth[type='hidden'][joinform_seq='" +
                  joinform_seq +
                  "']"
              ).val();
              if (childs[0]) {
                $('.selectsubDepth', selectLabelSetObj).show();
                $(
                  "select.selectLabelDepth2[joinform_seq='" +
                    joinform_seq +
                    "']"
                ).empty();
                for (var i = 0; i < childs.length; i++) {
                  $(
                    "select.selectLabelDepth2[joinform_seq='" +
                      joinform_seq +
                      "']"
                  ).append(
                    "<option value='" +
                      childs[i] +
                      "'>" +
                      childs[i] +
                      '</option>'
                  );
                }
              } else {
                $('.selectsubDepth', selectLabelSetObj).hide();
              }
              $(
                "select.selectLabelDepth2 option[value='" + select2 + "']"
              ).attr('selected', true);
            })
            .trigger('change');
        });

        /* ========== 반응형 프론트엔드 추가 ========= */
        // designed radio UI
        $('.designed_radio_checkbox input[type=radio]')
          .closest('.designed_radio_checkbox')
          .addClass('type_radio');
        $('.designed_radio_checkbox input[checked]')
          .parent('label')
          .addClass('on');

        $('.designed_radio_checkbox input[type=radio]').on(
          'change',
          function () {
            $(this).parent().parent().find('label').removeClass('on');
            $(this).parent('label').addClass('on');
          }
        );
        // designed checkbox UI
        $('.designed_radio_checkbox input[type=checkbox]').on(
          'change',
          function () {
            if ($(this).prop('checked')) {
              $(this).parent('label').addClass('on');
            } else {
              $(this).parent('label').removeClass('on');
            }
          }
        );
        /* ========== //반응형 프론트엔드 추가 ========= */
      });

      // 추천인 확인
      function chkRecommend(type) {
        var recommend = $('#recommend').val();
        if (type == 'b') recommend = $('#brecommend').val();
        if (!recommend) {
          //추천인명을 입력하세요
          openDialogAlert(getAlert('mb009'), 400, 150);
          return;
        }
        actionFrame.location.href =
          '/member/recommend_confirm?recomid=' + recommend + '&type=' + type;
      }

      // 휴대폰 인증 사용시 인증팝업
      function sms_auth_popup() {
        $('input[name="chg_phone[]"]').val('');
        $('input[name=authNum]').val('');
        clearInterval(timer);
        $('.authnum_send').show();
        $('.auth_timer').hide();
        //휴대폰 인증안내
        showCenterLayer('#smsauthphone');
        //openDialog(getAlert('mb149'), "authphone", {"width":"600","height":"250"});
      }

      $(function () {
        $('.chg_phone').keyup(function () {
          var charLimit = $(this).attr('maxlength');
          if (this.value.length >= charLimit) {
            $(this).next('.chg_phone').focus();
            return false;
          }
        });
      });

      var timer = '';
      function sms_auth_send() {
        var phone = $('input[name="chg_phone[]"]')
          .map(function () {
            return this.value;
          })
          .get();
        var min = 2;
        var sec = 59;
        $.ajax({
          url: '../kakaomsg/sms_auth_send',
          data: { 'cellphone[]': phone },
          type: 'post',
          dataType: 'json',
          success: function (response) {
            if (response.result == 'success') {
              alert('인증번호가 발송되었습니다.');
              $('.authnum_send').hide();
              $('.auth_timer').show();
              timer = setInterval(function () {
                if (sec == 0) {
                  sec = 59;
                  if (min != 0) {
                    min = min - 1;
                  }
                } else {
                  sec = sec - 1;
                }
                $('#timer_min').html(min);
                $('#timer_sec').html(sec);

                if (min == 0 && sec == 0) {
                  clearInterval(timer);
                  $('.authnum_send').show();
                  $('.auth_timer').hide();
                }
              }, 1000);
            } else {
              alert(response.message);
            }
          },
        });
      }

      function sms_auth_confirm() {
        var phone = $('input[name="chg_phone[]"]')
          .map(function () {
            return this.value;
          })
          .get();

        var tmpAuthNumber = true;
        if (tmpAuthNumber) {
          tmpAuthNumber = false;
          if ($('#authNum').val().length < 6) {
            alert('인증코드를 제대로 입력해주세요.');
            tmpAuthNumber = true;
            return false;
          }
          var authNum = $('#authNum').val();
          $.ajax({
            url: '../kakaomsg/sms_auth_confirm',
            data: { 'cellphone[]': phone, authNum: authNum },
            type: 'post',
            dataType: 'json',
            success: function (response) {
              if (response.result == 'success') {
                clearInterval(timer);
                alert('휴대폰 인증이 완료되었습니다.');
                $.each($("input[name='cellphone[]']"), function (index, item) {
                  $(item).val(phone[index]);
                });
                $('input[name=_htelAuthNum]').val(authNum);

                hideCenterLayer('#smsauthphone');
              } else {
                alert(response.message);
              }
            },
          });
        } else {
          alert('인증번호를 입력하세요.');
        }
      }
 */    </script>
  </body>
</html>
