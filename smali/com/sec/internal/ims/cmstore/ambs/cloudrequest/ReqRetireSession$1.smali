.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;
.super Ljava/lang/Object;
.source "ReqRetireSession.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 33
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 42
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call was failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)V

    .line 44
    return-void
.end method
