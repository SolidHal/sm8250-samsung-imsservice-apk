.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;

    .line 719
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    .line 728
    return-void
.end method

.method public closeStorage()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 776
    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 3
    .param p1, "mobile"    # Z

    .line 749
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceAutoConfig mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 752
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 3
    .param p1, "mobile"    # Z

    .line 761
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceAutoConfigNeedResetConfig mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 765
    return-void
.end method

.method public handleMSISDNDialog()V
    .locals 2

    .line 769
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMSISDNDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 771
    return-void
.end method

.method public init()V
    .locals 2

    .line 722
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 2

    .line 780
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 782
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public startAutoConfig(Z)V
    .locals 3
    .param p1, "mobile"    # Z

    .line 732
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoConfig mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Config status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sIsConfigOngoing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 738
    :cond_0
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .locals 3
    .param p1, "mobile"    # Z

    .line 742
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoConfigDualsim mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 745
    return-void
.end method
