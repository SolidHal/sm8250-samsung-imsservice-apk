.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 1942
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 2
    .param p1, "httpResponseParams"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 1945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1946
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 1950
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1951
    return-void
.end method
