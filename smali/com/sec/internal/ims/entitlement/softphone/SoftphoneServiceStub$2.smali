.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;
.super Landroid/content/BroadcastReceiver;
.source "SoftphoneServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 122
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$500(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "airPlaneModeOn":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAirplaneModeReceiver onChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 128
    if-ne v0, v2, :cond_1

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 131
    .local v2, "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onAirplaneModeOn()V

    .line 129
    .end local v2    # "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
