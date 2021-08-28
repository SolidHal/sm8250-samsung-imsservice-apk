.class public Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;
    }
.end annotation


# static fields
.field public static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CDMA_SMS_DIGIT_MODE_4_BIT:I = 0x0

.field private static final CDMA_SMS_DIGIT_MODE_8_BIT:I = 0x1

.field public static final DELIVER_MESSAGE_TYPE:I = 0x1

.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x4

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x8

.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_GSM_7BIT_ALPHABET:I = 0x9

.field public static final ENCODING_GSM_DCS:I = 0xa

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS91_EXTENDED_PROTOCOL:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE_16:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final GSM_NETWORK_TYPE:I = 0x2

.field public static final IPC_ADDRESS:I = 0x3

.field public static final IPC_BEARER_DATA:I = 0x19

.field public static final IPC_BEARER_REPLY:I = 0x5

.field public static final IPC_SERVICE_CATEGORY:I = 0x2

.field public static final IPC_SMS_FORMAT_PP:I = 0x1

.field public static final IPC_SMS_FORMAT_SR:I = 0x2

.field public static final IPC_SUBADDRESS:I = 0x4

.field public static final IPC_TELESERVICE_ID:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final PARAM_ID_BEARER_DATA:I = 0x8

.field public static final PARAM_ID_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_ID_CAUSE_CODES:I = 0x7

.field public static final PARAM_ID_DESTINATION_ADDRESS:I = 0x4

.field public static final PARAM_ID_DESTINATION_SUB_ADDRESS:I = 0x5

.field public static final PARAM_ID_ORIGINATING_ADDRESS:I = 0x2

.field public static final PARAM_ID_ORIGINATING_SUB_ADDRESS:I = 0x3

.field public static final PARAM_ID_SERVICE_CATEGORY:I = 0x1

.field public static final PARAM_ID_TELESERVICE:I = 0x0

.field public static final PARAM_LENGTH_TELESERVICE:I = 0x2

.field public static final STATUS_REPORT_MESSAGE_TYPE:I = 0x2

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field private mAddressByte:[B

.field private mBearerData:[B

.field private mBearerDataLength:I

.field private mBearerReplyOptionValue:I

.field private mCauseCode:I

.field private mContentType:I

.field private mCur:I

.field private mDestAddress:Ljava/lang/String;

.field private mDigitMode:I

.field private mErrorClass:I

.field private mMessageRef:I

.field private mMessageType:I

.field private mMsgId:I

.field private mMsgType:I

.field private mNetworktype:I

.field private mNoOfAddressDigit:I

.field private mNumberMode:I

.field private mNumberPlan:I

.field private mReplySeqNo:I

.field private mScAddress:Ljava/lang/String;

.field private mServiceCategory:I

.field private mStatusReportRequested:Z

.field private mTeleServiceid:I

.field private mTpdu:[B

.field private mUserDataHeader:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 193
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 195
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    .line 196
    return-void
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1
    .param p0, "dtmfDigit"    # B

    .line 620
    packed-switch p0, :pswitch_data_0

    .line 640
    const/16 v0, 0x20

    .local v0, "asciiDigit":B
    goto :goto_0

    .line 638
    .end local v0    # "asciiDigit":B
    :pswitch_0
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 637
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 636
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 635
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 634
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 633
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 632
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 631
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 630
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 629
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 628
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 627
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 626
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 625
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 624
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 623
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x30

    .line 643
    .restart local v0    # "asciiDigit":B
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 9
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 818
    const/16 v0, 0x18

    .line 820
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 821
    .local v1, "msgId":I
    const/4 v2, 0x0

    .line 822
    .local v2, "bearerMsgType":I
    const/4 v3, 0x0

    .line 823
    .local v3, "hasUserDataHeader":I
    const/4 v4, 0x0

    .line 825
    .local v4, "decodeSuccess":Z
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 827
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    mul-int/2addr v6, v5

    .line 829
    .local v6, "paramBits":I
    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 830
    add-int/lit8 v6, v6, -0x18

    .line 831
    const/4 v4, 0x1

    .line 833
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 834
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    shl-int/lit8 v1, v8, 0x8

    .line 835
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    or-int/2addr v1, v5

    .line 836
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 838
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    .line 839
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 840
    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    .line 841
    if-lez v6, :cond_0

    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_IDENTIFIER decode succeeded (extra bits = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SmsMessage"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 847
    :cond_1
    return-void
.end method

.method private decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 2
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 851
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 852
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    .line 853
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 854
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 855
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 856
    return-void
.end method

.method private encodeCdmaAddress(I)[B
    .locals 6
    .param p1, "paramId"    # I

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "digitSize":I
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 687
    .local v1, "bos":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    :try_start_0
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 688
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getAddressParameterLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 689
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 690
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 692
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v3, v4, :cond_0

    .line 693
    const/4 v3, 0x3

    iget v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 696
    :cond_0
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v5, 0x4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez v3, :cond_1

    .line 697
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v1, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 700
    :cond_1
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 702
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v2, :cond_2

    .line 703
    const/4 v0, 0x4

    goto :goto_0

    .line 705
    :cond_2
    const/16 v0, 0x8

    .line 708
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v2, v3, :cond_4

    .line 709
    if-ne v0, v5, :cond_3

    .line 710
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseToDtmf(B)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_2

    .line 712
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 708
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 715
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 716
    :catch_0
    move-exception v2

    .line 717
    .local v2, "e":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v3, "SmsMessage"

    const-string v4, "bitwise exception is thrown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;->printStackTrace()V

    .line 720
    .end local v2    # "e":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAddressParameterLength()I
    .locals 4

    .line 859
    const/4 v0, 0x0

    .line 861
    .local v0, "numOfBits":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 862
    add-int/2addr v0, v1

    .line 864
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v2, v1, :cond_0

    .line 865
    add-int/lit8 v0, v0, 0x3

    .line 868
    :cond_0
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez v2, :cond_1

    .line 869
    add-int/lit8 v0, v0, 0x4

    .line 872
    :cond_1
    add-int/lit8 v0, v0, 0x8

    .line 874
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v2, :cond_2

    .line 875
    const/4 v2, 0x4

    .local v2, "digitSize":I
    goto :goto_0

    .line 877
    .end local v2    # "digitSize":I
    :cond_2
    const/16 v2, 0x8

    .line 880
    .restart local v2    # "digitSize":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 882
    rem-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_3

    .line 883
    div-int/lit8 v1, v0, 0x8

    .local v1, "addrParamLen":I
    goto :goto_1

    .line 885
    .end local v1    # "addrParamLen":I
    :cond_3
    div-int/lit8 v3, v0, 0x8

    add-int/2addr v1, v3

    .line 888
    .restart local v1    # "addrParamLen":I
    :goto_1
    return v1
.end method

.method private getByte()I
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getGsmAddress()Ljava/lang/String;
    .locals 8

    .line 558
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    .line 559
    .local v2, "addressLength":I
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v3, v4

    .line 562
    .local v3, "lengthBytes":I
    new-array v5, v3, [B

    .line 563
    .local v5, "origBytes":[B
    const/4 v6, 0x0

    invoke-static {v0, v1, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    const/4 v0, 0x1

    aget-byte v1, v5, v0

    and-int/lit16 v1, v1, 0xff

    .line 567
    .local v1, "toa":I
    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    .line 568
    mul-int/lit8 v0, v2, 0x4

    div-int/lit8 v0, v0, 0x7

    .line 570
    .local v0, "countSeptets":I
    invoke-static {v5, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v5, v4

    .line 575
    .local v4, "lastByte":B
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v0, :cond_1

    .line 576
    add-int/lit8 v6, v3, -0x1

    aget-byte v7, v5, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 579
    :cond_1
    add-int/lit8 v6, v3, -0x1

    invoke-static {v5, v0, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 582
    .restart local v0    # "result":Ljava/lang/String;
    add-int/lit8 v6, v3, -0x1

    aput-byte v4, v5, v6

    .line 585
    .end local v4    # "lastByte":B
    :goto_0
    return-object v0
.end method

.method private getSCAddress()Ljava/lang/String;
    .locals 4

    .line 592
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    .line 594
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 595
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 599
    invoke-static {v1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 600
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 601
    .local v1, "tr":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "invalid SC address: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const/4 v2, 0x0

    move-object v1, v2

    .line 605
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 606
    return-object v1
.end method

.method private parseCdmaAddress([B)V
    .locals 6
    .param p1, "address"    # [B

    .line 647
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 648
    .local v0, "bis":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v1, 0x0

    .line 651
    .local v1, "digitSize":I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 652
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 654
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v3, :cond_0

    .line 655
    const/4 v1, 0x4

    goto :goto_0

    .line 657
    :cond_0
    const/16 v1, 0x8

    .line 660
    :goto_0
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v3, v2, :cond_1

    .line 661
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 664
    :cond_1
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-ne v3, v2, :cond_2

    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    if-nez v2, :cond_2

    .line 665
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 668
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    .line 669
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v2, v3, :cond_4

    .line 672
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 673
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aget-byte v3, v3, v2

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_3

    .line 674
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    aput-byte v5, v3, v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 679
    .end local v2    # "i":I
    :cond_4
    goto :goto_2

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v3, "SmsMessage"

    const-string v4, "bitwiseinputstream exception is thrown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v2    # "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_2
    return-void
.end method

.method private static parseToDtmf(B)I
    .locals 1
    .param p0, "addressByte"    # B

    .line 725
    const/16 v0, 0x31

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .local v0, "val":I
    goto :goto_0

    .line 726
    .end local v0    # "val":I
    :cond_0
    const/16 v0, 0x30

    if-ne p0, v0, :cond_1

    const/16 v0, 0xa

    .restart local v0    # "val":I
    goto :goto_0

    .line 727
    .end local v0    # "val":I
    :cond_1
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2

    const/16 v0, 0xb

    .restart local v0    # "val":I
    goto :goto_0

    .line 728
    .end local v0    # "val":I
    :cond_2
    const/16 v0, 0x23

    if-ne p0, v0, :cond_3

    const/16 v0, 0xc

    .line 731
    .restart local v0    # "val":I
    :goto_0
    return v0

    .line 729
    .end local v0    # "val":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public convertToFrameworkSmsFormat([B)[B
    .locals 5
    .param p1, "pdu"    # [B

    .line 265
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaDeliverPdu([B)V

    .line 266
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 267
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 269
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 270
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 271
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 272
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 273
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 274
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 275
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 276
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 277
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 278
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 279
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 280
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 281
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 282
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 283
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 284
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 286
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsMessage"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    return-object v3

    .line 292
    :catch_1
    move-exception v4

    .line 293
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    return-object v3
.end method

.method public decodeBearerData([B)V
    .locals 13
    .param p1, "smsData"    # [B

    .line 744
    const-string v0, "BearerData decode failed: "

    const-string v1, "SmsMessage"

    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 746
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/4 v3, 0x0

    .line 747
    .local v3, "foundSubparamMask":I
    const/4 v4, 0x0

    .line 748
    .local v4, "userDatalength":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_9

    .line 749
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 750
    .local v7, "subparamId":I
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 751
    .local v8, "subpramlength":I
    shl-int v9, v6, v7

    .line 753
    .local v9, "subparamIdBit":I
    const/4 v10, 0x1

    .line 754
    .local v10, "decodeSuccess":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "subparamId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    and-int v11, v3, v9

    const/16 v12, 0x17

    if-eqz v11, :cond_1

    if-ltz v7, :cond_1

    if-le v7, v12, :cond_0

    goto :goto_1

    .line 758
    :cond_0
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal duplicate subparameter ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local p1    # "smsData":[B
    throw v5

    .line 761
    .restart local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local p1    # "smsData":[B
    :cond_1
    :goto_1
    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_3

    const/16 v6, 0xa

    if-eq v7, v6, :cond_2

    .line 791
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v8, :cond_7

    .line 792
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 791
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 772
    .end local v6    # "i":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeReplyOption(Lcom/android/internal/util/BitwiseInputStream;)V

    .line 773
    goto :goto_5

    .line 767
    :cond_3
    move v4, v8

    .line 768
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v8, :cond_4

    .line 769
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 768
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 770
    .end local v6    # "i":I
    :cond_4
    goto :goto_5

    .line 763
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v8, :cond_6

    .line 764
    invoke-virtual {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 763
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 765
    .end local v6    # "i":I
    :cond_6
    nop

    .line 796
    :cond_7
    :goto_5
    if-eqz v10, :cond_8

    if-ltz v7, :cond_8

    if-gt v7, v12, :cond_8

    .line 799
    or-int/2addr v3, v9

    .line 801
    .end local v7    # "subparamId":I
    .end local v8    # "subpramlength":I
    .end local v9    # "subparamIdBit":I
    .end local v10    # "decodeSuccess":Z
    :cond_8
    goto/16 :goto_0

    .line 802
    :cond_9
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    .line 805
    if-eqz v4, :cond_b

    iget v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mUserDataHeader:I

    if-ne v5, v6, :cond_b

    .line 806
    const-string v5, "UserData has header"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 803
    :cond_a
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;

    const-string v6, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local p1    # "smsData":[B
    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v2    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v3    # "foundSubparamMask":I
    .end local v4    # "userDatalength":I
    .restart local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local p1    # "smsData":[B
    :catch_0
    move-exception v2

    .line 811
    .local v2, "ex":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 808
    .end local v2    # "ex":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage$CodingException;
    :catch_1
    move-exception v2

    .line 809
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_b
    :goto_6
    nop

    .line 813
    :goto_7
    return-void
.end method

.method public getAddressBytes()[B
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mContentType:I

    return v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCause()I
    .locals 1

    .line 912
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    return v0
.end method

.method public getErrorClass()I
    .locals 1

    .line 916
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    return v0
.end method

.method public getMessageRef()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    return v0
.end method

.method public getMsgID()I
    .locals 1

    .line 900
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgId:I

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusReportRequested()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    return v0
.end method

.method public getTpdu()[B
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    return-object v0
.end method

.method public parseCdmaDeliverPdu([B)V
    .locals 12
    .param p1, "pdu"    # [B

    .line 299
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 301
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 304
    .local v3, "numRead":I
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageType:I

    .line 306
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_6

    .line 307
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 308
    .local v4, "parameterId":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 309
    .local v5, "parameterLen":I
    new-array v6, v5, [B

    .line 310
    .local v6, "parameterData":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parameterId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    const-string/jumbo v7, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    const/4 v8, 0x6

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    .line 388
    :try_start_1
    new-instance v7, Ljava/lang/Exception;

    goto/16 :goto_3

    .line 359
    :pswitch_0
    invoke-virtual {v2, v6, v9, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    move v3, v10

    .line 360
    if-gez v3, :cond_0

    .line 361
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iput v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    .line 364
    iput-object v6, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    .line 366
    if-eqz v5, :cond_5

    .line 367
    new-array v7, v8, [B

    .line 368
    .local v7, "messageId":[B
    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 369
    .local v10, "bais2":Ljava/io/ByteArrayInputStream;
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 370
    .local v11, "dis2":Ljava/io/DataInputStream;
    invoke-virtual {v11, v7, v9, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v3, v8

    .line 371
    if-gez v3, :cond_1

    .line 372
    const-string/jumbo v8, "parseCdmaDeliverPdu: messageId - the end of the stream has been reached."

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v8, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .local v8, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :try_start_2
    invoke-direct {p0, v8}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    goto :goto_1

    .line 379
    :catch_0
    move-exception v9

    .line 380
    .local v9, "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 382
    .end local v9    # "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V

    .line 383
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 384
    .end local v7    # "messageId":[B
    .end local v8    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v10    # "bais2":Ljava/io/ByteArrayInputStream;
    .end local v11    # "dis2":Ljava/io/DataInputStream;
    goto :goto_2

    .line 348
    :pswitch_1
    invoke-virtual {v2, v6, v9, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    move v3, v10

    .line 349
    if-gez v3, :cond_2

    .line 350
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2
    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v7, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 353
    .local v7, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v7, v8}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    aget-byte v8, v8, v9

    iput v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mReplySeqNo:I

    .line 354
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    aget-byte v8, v8, v9

    iput v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mErrorClass:I

    .line 355
    if-eqz v8, :cond_5

    .line 356
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    aget-byte v8, v8, v9

    iput v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCauseCode:I

    goto :goto_2

    .line 340
    .end local v7    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_2
    invoke-virtual {v2, v6, v9, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    move v3, v9

    .line 341
    if-gez v3, :cond_3

    .line 342
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_3
    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v7, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 345
    .local v7, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v7, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerReplyOptionValue:I

    .line 346
    goto :goto_2

    .line 338
    .end local v7    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_3
    goto :goto_2

    .line 329
    :pswitch_4
    new-array v7, v5, [B

    .line 330
    .local v7, "address":[B
    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    move v3, v8

    .line 331
    if-gez v3, :cond_4

    .line 332
    const-string/jumbo v8, "parseCdmaDeliverPdu: address - the end of the stream has been reached."

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    invoke-direct {p0, v7}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseCdmaAddress([B)V

    .line 335
    goto :goto_2

    .line 325
    .end local v7    # "address":[B
    :pswitch_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    iput v7, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    .line 326
    goto :goto_2

    .line 318
    :pswitch_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    iput v7, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    .line 319
    nop

    .line 390
    .end local v4    # "parameterId":I
    .end local v5    # "parameterLen":I
    .end local v6    # "parameterData":[B
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 388
    .restart local v4    # "parameterId":I
    .restart local v5    # "parameterLen":I
    .restart local v6    # "parameterData":[B
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported parameterId ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "numRead":I
    .end local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local p1    # "pdu":[B
    throw v7

    .line 391
    .end local v4    # "parameterId":I
    .end local v5    # "parameterLen":I
    .end local v6    # "parameterData":[B
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "numRead":I
    .restart local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local p1    # "pdu":[B
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 392
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    goto :goto_4

    .line 393
    :catch_1
    move-exception v4

    .line 394
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseCdmaDeliverPdu: conversion from pdu to SmsMessage failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseDeliverPdu([BLjava/lang/String;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 512
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 515
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 516
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    nop

    .line 527
    const-string v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v2

    .line 530
    .local v2, "firstByte":I
    and-int/lit8 v3, v2, 0x3

    .line 531
    .local v3, "mti":I
    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 539
    :cond_0
    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 541
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    .line 542
    goto :goto_0

    .line 536
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMsgType:I

    .line 537
    nop

    .line 547
    .end local v2    # "firstByte":I
    .end local v3    # "mti":I
    :goto_0
    goto :goto_1

    .line 548
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mMessageRef:I

    .line 551
    :goto_1
    return-void

    .line 517
    :catch_0
    move-exception v2

    .line 518
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageType: conversion from byte array to object failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsMessage"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    return-void

    .line 522
    :catch_1
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    return-void
.end method

.method public parseOutgoingCdmaSms([B)V
    .locals 14
    .param p1, "moPdu"    # [B

    .line 401
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 402
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 403
    .local v2, "dis":Ljava/io/DataInputStream;
    array-length v3, p1

    .line 406
    .local v3, "pduLength":I
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    .line 407
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 408
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mServiceCategory:I

    .line 410
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    .line 411
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberMode:I

    .line 412
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNetworktype:I

    .line 413
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNumberPlan:I

    .line 415
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const-string v5, " > pdu len "

    if-gt v4, v3, :cond_6

    .line 423
    :try_start_1
    new-array v6, v3, [B

    .line 424
    .local v6, "parameterData":[B
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    .local v4, "numRead":I
    const-string/jumbo v8, "parseOutgoingCdmaSms: parameterData - the end of the stream has been reached."

    if-gez v4, :cond_0

    .line 426
    :try_start_2
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    new-instance v9, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v9, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 430
    .local v9, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    iget v10, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    new-array v10, v10, [B

    .line 431
    .local v10, "data":[B
    iget v11, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 432
    const/4 v11, 0x0

    .line 434
    .local v11, "b":B
    iget v12, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    if-nez v12, :cond_2

    .line 436
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    iget v13, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v12, v13, :cond_1

    .line 437
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 438
    invoke-virtual {v9, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    and-int/lit8 v13, v13, 0xf

    int-to-byte v11, v13

    .line 441
    invoke-static {v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->convertDtmfToAscii(B)B

    move-result v13

    aput-byte v13, v10, v12

    .line 436
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v12    # "index":I
    :cond_1
    goto :goto_2

    .line 443
    :cond_2
    iget v12, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDigitMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 445
    const/4 v12, 0x0

    .restart local v12    # "index":I
    :goto_1
    iget v13, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    if-ge v12, v13, :cond_3

    .line 446
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-byte v11, v13

    .line 447
    aput-byte v11, v10, v12

    .line 445
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 450
    .end local v12    # "index":I
    :cond_3
    :goto_2
    iput-object v10, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    .line 451
    new-instance v12, Ljava/lang/String;

    iget-object v13, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mAddressByte:[B

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    iput-object v12, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    .line 452
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 453
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 454
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 457
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    iput v12, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    .line 460
    if-gt v12, v3, :cond_5

    .line 465
    new-array v5, v12, [B

    iput-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    .line 466
    invoke-virtual {v2, v5, v7, v12}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 467
    if-gez v4, :cond_4

    .line 468
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 471
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 477
    .end local v4    # "numRead":I
    .end local v6    # "parameterData":[B
    .end local v9    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v10    # "data":[B
    .end local v11    # "b":B
    goto :goto_3

    .line 461
    .restart local v4    # "numRead":I
    .restart local v6    # "parameterData":[B
    .restart local v9    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v10    # "data":[B
    .restart local v11    # "b":B
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parseOutgoingCdmaSms: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "pduLength":I
    .end local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local p1    # "moPdu":[B
    throw v7

    .line 419
    .end local v4    # "numRead":I
    .end local v6    # "parameterData":[B
    .end local v9    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v10    # "data":[B
    .end local v11    # "b":B
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "pduLength":I
    .restart local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local p1    # "moPdu":[B
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mNoOfAddressDigit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "pduLength":I
    .end local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local p1    # "moPdu":[B
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "pduLength":I
    .restart local p0    # "this":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local p1    # "moPdu":[B
    :catch_0
    move-exception v4

    .line 476
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseOutgoingCdmaSms2: conversion from byte array to object failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 472
    :catch_1
    move-exception v0

    .line 473
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseOutgoingCdmaSms1: conversion from byte array to object failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseOutgoingGsmSms()V
    .locals 5

    .line 483
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getSCAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseOutgoingGsmSms() : mScAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getByte()I

    move-result v0

    .line 486
    .local v0, "firstByte":I
    and-int/lit8 v1, v0, 0x3

    .line 487
    .local v1, "mti":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mStatusReportRequested:Z

    .line 488
    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    iget v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mCur:I

    .line 491
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getGsmAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mDestAddress:Ljava/lang/String;

    .line 492
    nop

    .line 501
    :goto_1
    return-void
.end method

.method public parseSubmitPdu([BLjava/lang/String;)[B
    .locals 10
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 200
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 201
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingCdmaSms([B)V

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 210
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 211
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 212
    iget v4, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTeleServiceid:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 214
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->encodeCdmaAddress(I)[B

    move-result-object v4

    .line 215
    .local v4, "encodeCdmaAddr":[B
    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 220
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 221
    iget v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 222
    iget-object v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 224
    iget v5, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerDataLength:I

    if-eqz v5, :cond_2

    .line 225
    const/4 v5, 0x6

    new-array v6, v5, [B

    .line 226
    .local v6, "messageId":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v7, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    .local v8, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v8, v6, v3, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 229
    .local v3, "numRead":I
    if-gez v3, :cond_1

    .line 230
    const-string/jumbo v5, "parseSubmitPdu: messageId - the end of the stream has been reached."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V

    .line 233
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v5, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .local v5, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeMessageId(Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    goto :goto_0

    .line 237
    :catch_0
    move-exception v9

    .line 238
    .local v9, "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->printStackTrace()V

    .line 242
    .end local v3    # "numRead":I
    .end local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v6    # "messageId":[B
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mBearerData:[B

    invoke-virtual {p0, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->decodeBearerData([B)V

    .line 243
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    .line 244
    .end local v4    # "encodeCdmaAddr":[B
    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B

    .line 247
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseOutgoingGsmSms()V

    .line 250
    :goto_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->mTpdu:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 252
    :catch_1
    move-exception v3

    .line 253
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    return-object v0

    .line 257
    :catch_2
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    return-object v0
.end method
