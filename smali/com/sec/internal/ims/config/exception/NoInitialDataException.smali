.class public Lcom/sec/internal/ims/config/exception/NoInitialDataException;
.super Ljava/lang/Exception;
.source "NoInitialDataException.java"


# static fields
.field private static final serialVersionUID:J = -0xe647122ffe4a8fdL


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

    iput-object v0, p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->message:Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->message:Ljava/lang/String;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->message:Ljava/lang/String;

    return-object v0
.end method
