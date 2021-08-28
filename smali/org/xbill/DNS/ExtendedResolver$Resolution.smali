.class Lorg/xbill/DNS/ExtendedResolver$Resolution;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ExtendedResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field done:Z

.field inprogress:[Ljava/lang/Object;

.field listener:Lorg/xbill/DNS/ResolverListener;

.field outstanding:I

.field query:Lorg/xbill/DNS/Message;

.field resolvers:[Lorg/xbill/DNS/Resolver;

.field response:Lorg/xbill/DNS/Message;

.field retries:I

.field sent:[I

.field thrown:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V
    .locals 7
    .param p1, "eres"    # Lorg/xbill/DNS/ExtendedResolver;
    .param p2, "query"    # Lorg/xbill/DNS/Message;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "l":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Resolver;

    check-cast v1, [Lorg/xbill/DNS/Resolver;

    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 35
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$100(Lorg/xbill/DNS/ExtendedResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    array-length v1, v1

    .line 42
    .local v1, "nresolvers":I
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$208(Lorg/xbill/DNS/ExtendedResolver;)I

    move-result v2

    rem-int/2addr v2, v1

    .line 43
    .local v2, "start":I
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$200(Lorg/xbill/DNS/ExtendedResolver;)I

    move-result v3

    if-le v3, v1, :cond_0

    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$200(Lorg/xbill/DNS/ExtendedResolver;)I

    move-result v3

    rem-int/2addr v3, v1

    invoke-static {p1, v3}, Lorg/xbill/DNS/ExtendedResolver;->access$202(Lorg/xbill/DNS/ExtendedResolver;I)I

    .line 45
    :cond_0
    if-lez v2, :cond_2

    .line 46
    new-array v3, v1, [Lorg/xbill/DNS/Resolver;

    .line 47
    .local v3, "shuffle":[Lorg/xbill/DNS/Resolver;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 48
    add-int v5, v4, v2

    rem-int/2addr v5, v1

    .line 49
    .local v5, "pos":I
    iget-object v6, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    aget-object v6, v6, v5

    aput-object v6, v3, v4

    .line 47
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "i":I
    :cond_1
    iput-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 54
    .end local v1    # "nresolvers":I
    .end local v2    # "start":I
    .end local v3    # "shuffle":[Lorg/xbill/DNS/Resolver;
    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    .line 55
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$300(Lorg/xbill/DNS/ExtendedResolver;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retries:I

    .line 57
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 58
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 166
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ExtendedResolver: got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :cond_0
    monitor-enter p0

    .line 169
    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 170
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    if-eqz v0, :cond_1

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 174
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 175
    goto :goto_1

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    .line 178
    monitor-exit p0

    return-void

    .line 179
    :cond_4
    const/4 v2, 0x0

    .line 184
    .local v2, "startnext":Z
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_5

    .line 185
    const/4 v2, 0x1

    .line 186
    :cond_5
    instance-of v3, p2, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_7

    .line 188
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    aget v3, v3, v0

    iget v4, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retries:I

    if-ge v3, v4, :cond_6

    .line 189
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 190
    :cond_6
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 191
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    goto :goto_2

    .line 192
    :cond_7
    instance-of v3, p2, Ljava/net/SocketException;

    if-eqz v3, :cond_9

    .line 197
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_a

    .line 199
    :cond_8
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    goto :goto_2

    .line 205
    :cond_9
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 207
    :cond_a
    :goto_2
    iget-boolean v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    if-eqz v3, :cond_b

    .line 208
    monitor-exit p0

    return-void

    .line 209
    :cond_b
    if-eqz v2, :cond_c

    .line 210
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 211
    :cond_c
    iget-boolean v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    if-eqz v3, :cond_d

    .line 212
    monitor-exit p0

    return-void

    .line 213
    :cond_d
    iget v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    if-nez v3, :cond_e

    .line 218
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 219
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    if-nez v1, :cond_e

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit p0

    return-void

    .line 224
    :cond_e
    iget-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    if-nez v1, :cond_f

    .line 225
    monitor-exit p0

    return-void

    .line 226
    .end local v0    # "n":I
    .end local v2    # "startnext":Z
    :cond_f
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-nez v0, :cond_10

    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 230
    :cond_10
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, p0, v1}, Lorg/xbill/DNS/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 231
    return-void

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "m"    # Lorg/xbill/DNS/Message;

    .line 144
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ExtendedResolver: received message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :cond_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    if-eqz v0, :cond_1

    .line 149
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->response:Lorg/xbill/DNS/Message;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit p0

    return-void

    .line 156
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    invoke-interface {v0, p0, p2}, Lorg/xbill/DNS/ResolverListener;->receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public send(I)V
    .locals 4
    .param p1, "n"    # I

    .line 63
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 64
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    aget-object v1, v1, p1

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    invoke-interface {v1, v3, p0}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    monitor-enter p0

    .line 70
    :try_start_1
    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 71
    iput-boolean v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 72
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    monitor-exit p0

    .line 78
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 76
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public start()Lorg/xbill/DNS/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 93
    iget v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 94
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    .line 95
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    invoke-interface {v1, v2}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    monitor-enter p0

    .line 109
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 111
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :goto_1
    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1

    .line 116
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->response:Lorg/xbill/DNS/Message;

    if-eqz v0, :cond_1

    .line 119
    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    .line 122
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    .line 124
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 125
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedResolver failure"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 121
    :cond_4
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public startAsync(Lorg/xbill/DNS/ResolverListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/xbill/DNS/ResolverListener;

    .line 134
    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 136
    return-void
.end method
