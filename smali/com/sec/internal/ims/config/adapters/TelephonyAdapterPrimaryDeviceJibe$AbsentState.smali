.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;
.source "TelephonyAdapterPrimaryDeviceJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbsentState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$1;

    .line 367
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;)V

    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 1

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 6

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 376
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtp:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-wide v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtpReceivedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 377
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPhoneId:I

    const-string v4, "getPortOtp exist"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;->mPortOtp:Ljava/lang/String;

    return-object v2

    .line 380
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
