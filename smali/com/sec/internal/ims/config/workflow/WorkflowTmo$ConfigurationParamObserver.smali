.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;
.super Landroid/database/ContentObserver;
.source "WorkflowTmo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationParamObserver"
.end annotation


# static fields
.field private static final AUTOCONFIG_START_DELAY:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 287
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 288
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 289
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    .line 290
    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->getCurrentConfigurationParams()Z

    move-result v0

    return v0
.end method

.method private createNewAutoConfigXml()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    const-string v1, "<RCSConfig>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    .local v0, "start":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    const-string v2, "</RCSConfig>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, "end":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<?xml version=\"1.0\"?>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    .line 361
    return-void

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const-string v4, ""

    iput-object v4, v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    .line 357
    new-instance v3, Lcom/sec/internal/ims/config/exception/NoInitialDataException;

    const-string v4, "Configuration Params in ContentProvider is not valid"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAutoConfigFromDb(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 334
    const-string v0, ""

    .line 335
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 336
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "imsi":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string v3, "device_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const/4 v9, 0x0

    const-string v7, "imsi=?"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 340
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_2

    .line 338
    :catchall_0
    move-exception v3

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3

    .line 343
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 345
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iput-object v0, v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    .line 346
    return-void
.end method

.method private getCurrentConfigurationParams()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$300()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->getAutoConfigFromDb(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not the correct imsi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    return v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->createNewAutoConfigXml()V

    .line 330
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 294
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 295
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "device config is changed so start autoconfiguration."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Device config is changed, start autoconfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->addEventLog(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",CHDC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020201

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    return-void
.end method

.method public registerObserver()V
    .locals 3

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver/registerObserver()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .line 312
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver/unregisterObserver()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 318
    :goto_0
    return-void
.end method
