.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowBell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method work()V
    .locals 6

    .line 40
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 41
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v1, 0x14

    .line 43
    .local v1, "count":I
    :goto_0
    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    .line 45
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 71
    :goto_1
    goto/16 :goto_2

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown exception occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->sleep(J)V

    .line 69
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    move-object v0, v3

    .line 70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 59
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string v4, "finish workflow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    move-object v0, v3

    .line 62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 52
    :catch_2
    move-exception v2

    .line 53
    .local v2, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownStatusException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 2 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->sleep(J)V

    .line 56
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    move-object v0, v3

    .line 57
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v2    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    goto/16 :goto_1

    .line 46
    :catch_3
    move-exception v2

    .line 47
    .local v2, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->sleep(J)V

    .line 50
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    move-object v0, v3

    .line 51
    invoke-virtual {v2}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v2    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 72
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 74
    :cond_1
    return-void
.end method
