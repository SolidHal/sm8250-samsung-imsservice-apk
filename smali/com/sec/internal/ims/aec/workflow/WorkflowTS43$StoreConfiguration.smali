.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;

    .line 292
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 297
    .local v0, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 298
    .local v1, "currTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 299
    .local v3, "currDate":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 300
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "root/timestamp"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget v5, v5, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mPhoneId:I

    invoke-static {v5, v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->debugPrint(ILjava/util/Map;)V

    .line 302
    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v5, v5, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setConfiguration(Ljava/util/Map;)V

    .line 303
    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v5, v5, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StoreConfiguration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 305
    new-instance v5, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    iget-object v6, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$1;)V

    return-object v5
.end method
