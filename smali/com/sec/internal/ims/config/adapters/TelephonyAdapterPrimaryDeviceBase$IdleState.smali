.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;
.source "TelephonyAdapterPrimaryDeviceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    .line 376
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;-><init>()V

    .line 377
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "idle state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    return-void
.end method
