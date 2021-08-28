.class public Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowRjil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 40
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {v5, v11, v12, v13}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v13}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method work()V
    .locals 10

    .line 46
    const-string v0, ""

    const-string/jumbo v1, "wait 2 sec. and retry"

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 47
    .local v2, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v3, 0x14

    .line 49
    .local v3, "count":I
    :goto_0
    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mNeedToStopWork:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    .line 51
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-interface {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v4
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 83
    :goto_1
    goto/16 :goto_4

    .line 76
    :catch_0
    move-exception v4

    .line 77
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown exception occur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v6, v0

    goto :goto_2

    .line 78
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 77
    :goto_2
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 1 sec. and retry"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->sleep(J)V

    .line 81
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v2, v5

    .line 82
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 71
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "finish"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 75
    goto/16 :goto_5

    .line 64
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v6

    .line 65
    .local v6, "e":Ljava/net/ConnectException;
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectException occur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v0

    goto :goto_3

    .line 66
    :cond_1
    invoke-virtual {v6}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 65
    :goto_3
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->sleep(J)V

    .line 69
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v2, v4

    .line 70
    invoke-virtual {v6}, Ljava/net/ConnectException;->printStackTrace()V

    .end local v6    # "e":Ljava/net/ConnectException;
    goto/16 :goto_1

    .line 58
    :catch_3
    move-exception v6

    .line 59
    .local v6, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UnknownStatusException occur:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->sleep(J)V

    .line 62
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v2, v4

    .line 63
    invoke-virtual {v6}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v6    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    goto/16 :goto_1

    .line 52
    :catch_4
    move-exception v4

    .line 53
    .local v4, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoInitialDataException occur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 10 sec. and retry"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v5, 0x2710

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->sleep(J)V

    .line 56
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    move-object v2, v5

    .line 57
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v4    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 84
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 86
    :cond_2
    :goto_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mNeedToStopWork:Z

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "work interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->mNeedToStopWork:Z

    .line 90
    :cond_3
    return-void
.end method
