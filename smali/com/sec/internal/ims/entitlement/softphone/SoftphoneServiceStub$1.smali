.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;
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

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 100
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 103
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive CONNECTIVITY_CHANGE Intent with NetworkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 104
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$100(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$102(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)Z

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$300(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 110
    .local v3, "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 111
    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onNetworkConnected()V

    .line 108
    .end local v3    # "client":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$102(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)Z

    .line 119
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    :goto_1
    return-void
.end method
