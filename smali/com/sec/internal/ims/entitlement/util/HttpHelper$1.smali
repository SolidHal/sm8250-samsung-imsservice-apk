.class Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;
.super Ljava/lang/Object;
.source "HttpHelper.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/util/HttpHelper;->buildHttpRequestCallback(Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/HttpHelper;

.field final synthetic val$OnComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/util/HttpHelper;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->this$0:Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 2
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http request 200 ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "ie"    # Ljava/io/IOException;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTP FAIL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x14090000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 62
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    .line 63
    .local v0, "result":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusReason(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 66
    return-void
.end method
