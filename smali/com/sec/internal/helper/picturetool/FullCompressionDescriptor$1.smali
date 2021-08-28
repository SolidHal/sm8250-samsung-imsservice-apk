.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 3
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

    .line 31
    invoke-static {}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitial mScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$300(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$202(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 35
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
