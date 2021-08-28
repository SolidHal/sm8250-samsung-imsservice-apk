.class abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IWorkflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "State"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;

    .line 660
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 663
    return-void
.end method

.method public closeStorage()V
    .locals 0

    .line 688
    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 0
    .param p1, "mobile"    # Z

    .line 675
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 0
    .param p1, "mobile"    # Z

    .line 684
    return-void
.end method

.method public handleMSISDNDialog()V
    .locals 0

    .line 692
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 0

    .line 696
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

    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAutoConfig(Z)V
    .locals 0
    .param p1, "mobile"    # Z

    .line 667
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .locals 0
    .param p1, "mobile"    # Z

    .line 671
    return-void
.end method
