.class public Lcom/sec/internal/helper/StringGenerator;
.super Ljava/lang/Object;
.source "StringGenerator.java"


# static fields
.field private static final CHAR_ARRAY_SIZE:I = 0x3e

.field private static final charArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    const/16 v0, 0x3e

    new-array v0, v0, [C

    sput-object v0, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 23
    sget-object v1, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 26
    sget-object v1, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    add-int/lit8 v2, v0, 0xa

    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 27
    add-int/lit8 v2, v0, 0x24

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateString(II)Ljava/lang/String;
    .locals 5
    .param p0, "minSize"    # I
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 45
    if-lez p0, :cond_2

    if-gt p0, p1, :cond_2

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    .local v0, "rand":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, "word":Ljava/lang/StringBuilder;
    if-le p1, p0, :cond_0

    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p0

    goto :goto_0

    :cond_0
    move v2, p1

    .line 52
    .local v2, "length":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 53
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/StringGenerator;->getChar(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 46
    .end local v0    # "rand":Ljava/util/Random;
    .end local v1    # "word":Ljava/lang/StringBuilder;
    .end local v2    # "length":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static getChar(I)C
    .locals 1
    .param p0, "index"    # I

    .line 32
    sget-object v0, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    aget-char v0, v0, p0

    return v0
.end method
