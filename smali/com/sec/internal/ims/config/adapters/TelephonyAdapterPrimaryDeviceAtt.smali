.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.source "TelephonyAdapterPrimaryDeviceAtt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt$SmsReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->registerSmsReceiver()V

    .line 35
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->initState()V

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected createSmsReceiver()V
    .locals 1

    .line 40
    new-instance v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt$SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt$SmsReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->mSmsReceiver:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$SmsReceiverBase;

    .line 41
    return-void
.end method

.method public getOtp()Ljava/lang/String;
    .locals 3

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x124f80

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->getOtp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->handleReceivedDataSms(Landroid/os/Message;ZZ)V

    .line 55
    nop

    .line 60
    :goto_0
    return-void
.end method

.method protected sendSmsPushForConfigRequest(Z)V
    .locals 1
    .param p1, "isForceConfigRequest"    # Z

    .line 45
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceAtt;->sendEmptyMessage(I)Z

    .line 46
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->sendSmsPushForConfigRequest(Z)V

    .line 47
    return-void
.end method
