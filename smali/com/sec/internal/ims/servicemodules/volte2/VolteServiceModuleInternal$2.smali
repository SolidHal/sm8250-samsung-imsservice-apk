.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;
.super Ljava/lang/Object;
.source "VolteServiceModuleInternal.java"

# interfaces
.implements Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerEpdgConnectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 831
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgServiceConnected()V
    .locals 5

    .line 834
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EPDG onEpdgServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 846
    const/4 v1, 0x0

    .line 847
    const-string v2, "allow_release_wfc_before_ho"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 848
    .local v1, "allowReleaseWfcBeforeHO":Z
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is allow release call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/EpdgManager;->setReleaseCallBeforeHO(IZ)Z

    .line 845
    .end local v1    # "allowReleaseWfcBeforeHO":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onEpdgServiceDisconnected()V
    .locals 2

    .line 855
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "WfcEpdgMgr : disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 858
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 859
    return-void
.end method
