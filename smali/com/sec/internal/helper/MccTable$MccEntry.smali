.class Lcom/sec/internal/helper/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/internal/helper/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mIso:Ljava/lang/String;

.field final mMcc:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p2, :cond_0

    .line 28
    iput p1, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    .line 29
    iput-object p2, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 30
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/sec/internal/helper/MccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/sec/internal/helper/MccTable$MccEntry;

    .line 34
    iget v0, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    iget v1, p1, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/sec/internal/helper/MccTable$MccEntry;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/MccTable$MccEntry;->compareTo(Lcom/sec/internal/helper/MccTable$MccEntry;)I

    move-result p1

    return p1
.end method
