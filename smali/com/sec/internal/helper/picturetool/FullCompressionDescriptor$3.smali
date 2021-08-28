.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;
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

    .line 62
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 4
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

    .line 67
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v0

    .line 68
    .local v0, "scale":I
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$600(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    div-int/2addr v1, v2

    .line 70
    .local v1, "previousScaledMinDimension":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 71
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$600(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    div-int/2addr v2, v0

    .line 73
    .local v2, "scaledMinDimension":I
    if-eq v2, v1, :cond_1

    .line 75
    if-nez v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v3}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$700(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    goto :goto_1

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v3, v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$102(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)I

    .line 79
    nop

    .line 84
    .end local v2    # "scaledMinDimension":I
    invoke-static {}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mStandard: Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v3}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->access$100(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 82
    :cond_1
    :goto_1
    goto :goto_0
.end method
