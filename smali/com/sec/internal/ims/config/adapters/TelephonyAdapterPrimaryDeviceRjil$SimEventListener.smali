.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;
.super Ljava/lang/Object;
.source "TelephonyAdapterPrimaryDeviceRjil.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "absent"    # Z

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    .line 99
    .local v0, "simState":I
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->access$000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSimStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "absent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    new-instance v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;)V

    iput-object v2, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    instance-of v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    new-instance v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil$SimEventListener;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    iput-object v2, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;->mState:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;

    .line 109
    :cond_1
    :goto_0
    return-void
.end method
