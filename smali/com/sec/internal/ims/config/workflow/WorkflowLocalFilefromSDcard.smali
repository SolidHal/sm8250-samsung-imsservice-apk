.class public Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;
.super Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;
.source "WorkflowLocalFilefromSDcard.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mMno:Lcom/sec/internal/constants/Mno;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    .line 28
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mMno:Lcom/sec/internal/constants/Mno;

    .line 33
    iput-object p4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mMno:Lcom/sec/internal/constants/Mno;

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 38
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object v0

    .line 40
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object v0
.end method
