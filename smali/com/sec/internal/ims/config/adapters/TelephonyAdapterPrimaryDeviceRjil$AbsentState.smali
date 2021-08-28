.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;
.source "TelephonyAdapterPrimaryDeviceRjil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbsentState"
.end annotation


# instance fields
.field mImsProfile:Lcom/sec/ims/settings/ImsProfile;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V
    .locals 4

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string v2, "TelephonyAdapter:Absent state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 174
    .local v0, "phoneid":I
    iget-object v1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "profile":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string v3, "AbsentState : no ImsProfile loaded"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    :goto_0
    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "soltId"    # I

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 6

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 185
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mOtp:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-wide v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mOtpReceivedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 186
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string v4, "OTP exist. send immediately"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    const-string v4, "OTP don\'t exist. wait OTP"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 194
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive OTP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v5, v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mOtp:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mOtp:Ljava/lang/String;

    return-object v2
.end method
