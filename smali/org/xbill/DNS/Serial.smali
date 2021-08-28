.class public final Lorg/xbill/DNS/Serial;
.super Ljava/lang/Object;
.source "Serial.java"


# static fields
.field private static final MAX32:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static compare(JJ)I
    .locals 7
    .param p0, "serial1"    # J
    .param p2, "serial2"    # J

    .line 32
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-string v3, " out of range"

    if-ltz v2, :cond_3

    const-wide v4, 0xffffffffL

    cmp-long v2, p0, v4

    if-gtz v2, :cond_3

    .line 34
    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    cmp-long v0, p2, v4

    if-gtz v0, :cond_2

    .line 36
    sub-long v0, p0, p2

    .line 37
    .local v0, "diff":J
    cmp-long v2, v0, v4

    const-wide v3, 0x100000000L

    if-ltz v2, :cond_0

    .line 38
    sub-long/2addr v0, v3

    goto :goto_0

    .line 39
    :cond_0
    const-wide v5, -0xffffffffL

    cmp-long v2, v0, v5

    if-gez v2, :cond_1

    .line 40
    add-long/2addr v0, v3

    .line 41
    :cond_1
    :goto_0
    long-to-int v2, v0

    return v2

    .line 35
    .end local v0    # "diff":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static increment(J)J
    .locals 5
    .param p0, "serial"    # J

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide v2, 0xffffffffL

    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    .line 56
    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 57
    return-wide v0

    .line 58
    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
