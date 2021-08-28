.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;
.super Ljava/lang/Object;
.source "SoftphoneHttpTransaction.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->executeRequest(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

.field final synthetic val$OnComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 132
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 1
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "ie"    # Ljava/io/IOException;

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method
