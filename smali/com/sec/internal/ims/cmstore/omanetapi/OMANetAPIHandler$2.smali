.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;
.super Ljava/lang/Object;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

.field final synthetic val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveOn()V
    .locals 2

    .line 229
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Last failed API succeed, resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    .line 231
    return-void
.end method
