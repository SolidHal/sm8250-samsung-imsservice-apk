.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw$AbsentState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;
.source "TelephonyAdapterPrimaryDeviceVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbsentState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw$1;

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;)V

    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .line 119
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDeviceId method can\'t run in absentState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 101
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIdentityByPhoneId method can\'t run in absentState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscriptionId"    # I

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMsisdn method can\'t run in absentState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 2

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOtp method can\'t run in absentState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscriptionId"    # I

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSubscriberId method can\'t run in absentState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method
