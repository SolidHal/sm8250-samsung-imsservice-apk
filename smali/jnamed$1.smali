.class Ljnamed$1;
.super Ljava/lang/Object;
.source "jnamed.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic this$0:Ljnamed;

.field private final synthetic val$s:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljnamed;Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Ljnamed;

    .line 542
    iput-object p1, p0, Ljnamed$1;->this$0:Ljnamed;

    iput-object p2, p0, Ljnamed$1;->val$s:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    iget-object v0, p0, Ljnamed$1;->this$0:Ljnamed;

    iget-object v1, p0, Ljnamed$1;->val$s:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljnamed;->TCPclient(Ljava/net/Socket;)V

    return-void
.end method
