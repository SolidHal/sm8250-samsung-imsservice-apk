.class Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;
.super Ljava/lang/Object;
.source "ServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;

    .line 1074
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "absent"    # Z

    .line 1077
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->access$100(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    .line 1078
    .local v0, "mTelephony":Lcom/sec/internal/helper/os/ITelephonyManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v1

    .line 1079
    .local v1, "simState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReady: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " absent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "SIM state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceModuleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    :cond_0
    return-void
.end method
