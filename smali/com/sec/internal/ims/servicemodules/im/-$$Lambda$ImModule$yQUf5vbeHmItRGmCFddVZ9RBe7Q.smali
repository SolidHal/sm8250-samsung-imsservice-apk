.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field public final synthetic f$1:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$1:Lcom/sec/ims/util/ImsUri;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$1:Lcom/sec/ims/util/ImsUri;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$yQUf5vbeHmItRGmCFddVZ9RBe7Q;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$reportChatbotAsSpam$4$ImModule(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
