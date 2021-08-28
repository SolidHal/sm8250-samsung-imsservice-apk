.class public final synthetic Lcom/sec/internal/ims/servicemodules/openapi/-$$Lambda$OpenApiServiceModule$u44j8SCBOywwxq2QVsKA--B9YqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/AsyncResult;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/-$$Lambda$OpenApiServiceModule$u44j8SCBOywwxq2QVsKA--B9YqA;->f$0:Lcom/sec/internal/helper/AsyncResult;

    return-void
.end method


# virtual methods
.method public final broadcast(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/-$$Lambda$OpenApiServiceModule$u44j8SCBOywwxq2QVsKA--B9YqA;->f$0:Lcom/sec/internal/helper/AsyncResult;

    check-cast p1, Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method
