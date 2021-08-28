.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;
.source "TelephonyAdapterPrimaryDeviceJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)V
    .locals 2

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string/jumbo v1, "ready state"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getMsisdnNumber()Ljava/lang/String;
    .locals 8

    .line 182
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "getMsisdnNumber"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "msisdn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v3, "msisdn exists from telephony"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const v1, 0x13040109

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",EMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-object v0, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdn:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdn:Ljava/lang/String;

    return-object v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 192
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string/jumbo v4, "operator using jibe, but not GC, use FW\'s dialog to ask for MSISDN"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    return-object v2

    .line 197
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v4, "need to get msisdn from application"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    .line 199
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    .line 200
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x4baf0

    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v5, v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    .line 204
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semaphore acquire with mCurrentMsisdnPermits: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 210
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 211
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-boolean v3, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    .line 212
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdn:Ljava/lang/String;

    return-object v2
.end method

.method public getOtp()Ljava/lang/String;
    .locals 6

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "getOtp"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x4baf0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-static {v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$200(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    .line 152
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semaphore acquire with mCurrentOtpPermits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$200(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mOtp:Ljava/lang/String;

    return-object v0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 4

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "getPortOtp"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentPortPermits:I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentPortPermits:I

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPortOtp: semaphore acquire with mCurrentPortPermits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentPortPermits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtpSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentPortPermits:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtp:Ljava/lang/String;

    return-object v0
.end method

.method public notifyAutoConfigurationListener(IZ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "result"    # Z

    .line 258
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAutoConfigurationListener: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const/16 v0, 0x34

    const/16 v1, 0x33

    const/16 v2, 0x32

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 261
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "notifyAutoConfigurationListener: unknown notification type"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    return-void

    .line 265
    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    if-eqz v3, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    if-nez v3, :cond_3

    .line 266
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAutoConfigurationListener: ignore notification type, mIsWaitingForOtp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsWaitingForMsisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v4, v4, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-nez v4, :cond_4

    .line 273
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "notifyAutoConfigurationListener: mAutoConfigurationListener: empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 278
    :cond_4
    const/4 v4, 0x0

    .line 279
    .local v4, "listener":Lcom/sec/ims/IAutoConfigurationListener;
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v5, v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 280
    .local v5, "length":I
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyAutoConfigurationListener: listener length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    if-ne p1, v2, :cond_5

    .line 283
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onVerificationCodeNeeded"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    const v6, 0x13040101

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",VCN,LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_5
    if-ne p1, v1, :cond_6

    .line 286
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onMsisdnNumberNeeded"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const v6, 0x13040102

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",MNN,LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v8, "notifyAutoConfigurationListener: onAutoConfigurationCompleted"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const v6, 0x13040103

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v8, v8, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",ACC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",LEN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 293
    :goto_0
    if-nez v5, :cond_8

    .line 294
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v7, v7, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Listener not registered yet. Postpone notify later: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    if-ne p1, v0, :cond_7

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_8
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v5, :cond_b

    .line 304
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/IAutoConfigurationListener;

    move-object v4, v6

    .line 305
    if-ne p1, v2, :cond_9

    .line 306
    invoke-interface {v4}, Lcom/sec/ims/IAutoConfigurationListener;->onVerificationCodeNeeded()V

    goto :goto_2

    .line 307
    :cond_9
    if-ne p1, v1, :cond_a

    .line 308
    invoke-interface {v4}, Lcom/sec/ims/IAutoConfigurationListener;->onMsisdnNumberNeeded()V

    goto :goto_2

    .line 310
    :cond_a
    invoke-interface {v4, p2}, Lcom/sec/ims/IAutoConfigurationListener;->onAutoConfigurationCompleted(Z)V

    .line 311
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v6, v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    .end local v0    # "index":I
    .end local v4    # "listener":Lcom/sec/ims/IAutoConfigurationListener;
    .end local v5    # "length":I
    :cond_b
    goto :goto_3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAutoConfigurationListener: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    goto :goto_4

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAutoConfigurationListener: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    monitor-exit v3

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 218
    if-nez p1, :cond_0

    .line 219
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "listener: null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 225
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    const v1, 0x13040100

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",RL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 231
    .local v2, "pn":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->notifyAutoConfigurationListener(IZ)V

    .line 232
    .end local v2    # "pn":I
    goto :goto_0

    .line 235
    :cond_1
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string/jumbo v2, "sendMsisdnNumber"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",MN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040105

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->removeMessages(I)V

    .line 350
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string/jumbo v2, "value is null or empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWaitingForMsisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForMsisdn:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdn:Ljava/lang/String;

    .line 358
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semaphore release with mCurrentMsisdnPermits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mMsisdnSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentMsisdnPermits:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 364
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVerificationCode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13040104

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->removeMessages(I)V

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWaitingForOtp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mIsWaitingForOtp:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mOtp:Ljava/lang/String;

    .line 336
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semaphore release with mCurrentOtpPermits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$200(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mCurrentOtpPermits:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 342
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 241
    if-nez p1, :cond_0

    .line 242
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v2, "listener: null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    const v1, 0x1304010a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",UL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mAutoConfigurationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPostponedNotification:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 253
    :cond_1
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
