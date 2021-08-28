.class Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/PreciseAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private msg:Landroid/os/Message;

.field private timeout:J


# direct methods
.method public constructor <init>(Landroid/os/Message;J)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "timeout"    # J

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    .line 195
    iput-wide p2, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->timeout:J

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 189
    iget-object v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 189
    iget-wide v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->timeout:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)I
    .locals 4
    .param p1, "another"    # Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 200
    iget-wide v0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->timeout:J

    iget-wide v2, p1, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->timeout:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 189
    check-cast p1, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->compareTo(Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 215
    return v0

    .line 217
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 218
    return v1

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 221
    return v1

    .line 223
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;

    .line 225
    .local v2, "other":Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;
    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-nez v3, :cond_4

    .line 226
    iget-object v3, v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 227
    :cond_4
    iget v3, v3, Landroid/os/Message;->what:I

    iget-object v4, v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "retVal":I
    iget-object v1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 207
    mul-int/lit8 v2, v0, 0x7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 209
    :cond_0
    return v0
.end method
