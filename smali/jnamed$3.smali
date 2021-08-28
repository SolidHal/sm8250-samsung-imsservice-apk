.class Ljnamed$3;
.super Ljava/lang/Object;
.source "jnamed.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic this$0:Ljnamed;

.field private final synthetic val$addr:Ljava/net/InetAddress;

.field private final synthetic val$port:I


# direct methods
.method constructor <init>(Ljnamed;Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "this$0"    # Ljnamed;

    .line 613
    iput-object p1, p0, Ljnamed$3;->this$0:Ljnamed;

    iput-object p2, p0, Ljnamed$3;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Ljnamed$3;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 614
    iget-object v0, p0, Ljnamed$3;->this$0:Ljnamed;

    iget-object v1, p0, Ljnamed$3;->val$addr:Ljava/net/InetAddress;

    iget v2, p0, Ljnamed$3;->val$port:I

    invoke-virtual {v0, v1, v2}, Ljnamed;->serveUDP(Ljava/net/InetAddress;I)V

    return-void
.end method
