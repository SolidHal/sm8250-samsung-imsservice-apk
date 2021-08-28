.class public Lcom/sec/internal/ims/config/exception/UnknownStatusException;
.super Ljava/lang/Exception;
.source "UnknownStatusException.java"


# static fields
.field private static final serialVersionUID:J = -0x766c04405b99ed33L


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->message:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->message:Ljava/lang/String;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->message:Ljava/lang/String;

    return-object v0
.end method
