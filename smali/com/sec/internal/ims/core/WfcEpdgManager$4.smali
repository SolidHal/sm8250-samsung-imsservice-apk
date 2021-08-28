.class Lcom/sec/internal/ims/core/WfcEpdgManager$4;
.super Lcom/sec/ims/ISimMobilityStatusListener$Stub;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;->makeSimMobilityListener()Lcom/sec/ims/ISimMobilityStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 807
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimMobilityStateChanged(Z)V
    .locals 7
    .param p1, "simMobility"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 811
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isSimMobilityActivated(I)Z

    move-result p1

    .line 812
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2400(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2500(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSimMobilityStateChanged: simMobility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " phoneID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$2400(Lcom/sec/internal/ims/core/WfcEpdgManager;)[Z

    move-result-object v1

    aput-boolean p1, v1, v0

    .line 815
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 816
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v3, 0x5

    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/WfcEpdgManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(Landroid/os/Message;)V

    .line 810
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "phoneId":I
    :cond_1
    return-void
.end method
