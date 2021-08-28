.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;
.super Ljava/lang/Object;
.source "TelephonyAdapterState.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;


# static fields
.field protected static ABSENT_STATE:Ljava/lang/String;

.field protected static IDLE_STATE:Ljava/lang/String;

.field protected static READY_STATE:Ljava/lang/String;

.field protected static SMS_DEST_PORT:Ljava/lang/String;

.field protected static SMS_ORIG_PORT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "IdleState"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->IDLE_STATE:Ljava/lang/String;

    .line 8
    const-string v0, "ReadyState"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->READY_STATE:Ljava/lang/String;

    .line 9
    const-string v0, "AbsentState"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->ABSENT_STATE:Ljava/lang/String;

    .line 10
    const-string v0, "37273"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_DEST_PORT:Ljava/lang/String;

    .line 11
    const-string v0, "0"

    sput-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_ORIG_PORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 131
    return-void
.end method

.method public getAppToken(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isRetry"    # Z

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExistingOtp()Ljava/lang/String;
    .locals 1

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExistingPortOtp()Ljava/lang/String;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscriptionId"    # I

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 1

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryIdentity()Ljava/lang/String;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimCountryCode()Ljava/lang/String;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsDestPort()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_DEST_PORT:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsOrigPort()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_ORIG_PORT:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscriptionId"    # I

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAutoConfigurationListener(IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Z

    .line 116
    return-void
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 106
    return-void
.end method

.method public registerUneregisterForOTP(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 136
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 111
    return-void
.end method
