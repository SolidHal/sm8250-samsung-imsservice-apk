.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;
.source "TelephonyAdapterPrimaryDeviceUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsReceiver"
.end annotation


# static fields
.field private static final SMS_OTP_FORMAT_IOT_SERVER:Ljava/lang/String; = "your messenger verification code is"

.field private static final SMS_OTP_FORMAT_PROD_SERVER:Ljava/lang/String; = "messenger\'s enhanced features have been enabled"

.field private static final SMS_OTP_NEW_FORMAT_GOOGLE_SERVER:Ljava/lang/String; = "confirmation id"

.field private static final SMS_OTP_NEW_FORMAT_GOOGLE_SERVER_AMX:Ljava/lang/String; = "activation code is"

.field private static final SMS_OTP_NEW_FORMAT_NEWPACE_SERVER:Ljava/lang/String; = "the verification code for new messaging features"

.field private static final SMS_OTP_OLD_FORMAT_NEWPACE_SERVER:Ljava/lang/String; = "here is your krypton code. please be aware that this code expires after 15 minutes then re-authentication might be needed"

.field private static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;)V
    .locals 2

    .line 405
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 406
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v1, "SmsReceiver"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 408
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private parseOtp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "body"    # Ljava/lang/String;

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "otp":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 462
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "messenger\'s enhanced features have been enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-nez v2, :cond_8

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "your messenger verification code is"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 472
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "confirmation id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v5, 0x29

    const/16 v6, 0x3a

    if-eqz v2, :cond_2

    .line 473
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 474
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 475
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 476
    .local v4, "ch":C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v7, "activation code is"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 481
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_3

    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 482
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 483
    .restart local v4    # "ch":C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 481
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 485
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "here is your krypton code. please be aware that this code expires after 15 minutes then re-authentication might be needed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "the verification code for new messaging features"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 488
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .local v5, "i":I
    :goto_2
    if-lez v5, :cond_7

    if-ge v5, v1, :cond_7

    .line 490
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 491
    .local v6, "ch":C
    if-lt v6, v4, :cond_6

    if-gt v6, v3, :cond_6

    .line 492
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    .end local v6    # "ch":C
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 495
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 464
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v1, :cond_a

    .line 466
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 467
    .restart local v6    # "ch":C
    if-lt v6, v4, :cond_9

    if-gt v6, v3, :cond_9

    .line 468
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    .end local v6    # "ch":C
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 471
    .end local v5    # "i":I
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    nop

    .line 497
    :cond_b
    :goto_5
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseOtp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 498
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 413
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v2, "invalid intent"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    return-void

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "body":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "pdus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 421
    .local v1, "pdus":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 422
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v4, "invalid pdus"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    return-void

    .line 426
    :cond_1
    const-string v2, "format"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "format":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v5, "invalid format"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    return-void

    .line 432
    :cond_2
    array-length v3, v1

    new-array v3, v3, [Landroid/telephony/SmsMessage;

    .line 433
    .local v3, "message":[Landroid/telephony/SmsMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 434
    aget-object v5, v1, v4

    check-cast v5, [B

    invoke-static {v5, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v4

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    .end local v4    # "i":I
    :cond_3
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 437
    .local v6, "m":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .end local v6    # "m":Landroid/telephony/SmsMessage;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "smsBody":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 442
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v7, "invalid smsBody"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    return-void

    .line 445
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smsBody: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->parseOtp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "otp":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 449
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    const-string v8, "failed to parse smsBody, wait for next one"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 450
    return-void

    .line 452
    :cond_6
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget-boolean v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mIsWaitingForOtp:Z

    if-eqz v6, :cond_7

    .line 453
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iput-object v5, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mOtp:Ljava/lang/String;

    .line 454
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOtp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    iget-object v9, v9, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mOtp:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp$SmsReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;->mOtpReceivedTime:J

    .line 457
    :cond_7
    return-void
.end method
