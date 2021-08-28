.class Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;
.super Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
        "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$1;

    .line 250
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;
    .locals 0

    .line 253
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;->self()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;

    move-result-object v0

    return-object v0
.end method
