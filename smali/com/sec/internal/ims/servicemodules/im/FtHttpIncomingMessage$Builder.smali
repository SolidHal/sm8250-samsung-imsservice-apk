.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
        "TT;>;>",
        "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDataUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<TT;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mDataUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 1

    .line 175
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<TT;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 1

    .line 165
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object v0

    return-object v0
.end method

.method public dataUrl(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
    .locals 1
    .param p1, "dataUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->mDataUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    return-object v0
.end method
