.class public Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;
.super Ljava/lang/Object;
.source "PanicCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 2
    .param p1, "currentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "thow exception: conditions impossible to meet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method
