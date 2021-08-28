.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field public final synthetic f$1:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$1:Lcom/sec/ims/util/ImsUri;

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$2:I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$1:Lcom/sec/ims/util/ImsUri;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$2:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImModule$TmmrnH5e2eSY3xIm-fPGljr21iM;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->lambda$requestChatbotAnonymize$3$ImModule(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
