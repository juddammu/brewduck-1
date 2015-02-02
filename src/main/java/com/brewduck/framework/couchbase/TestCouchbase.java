package com.brewduck.framework.couchbase;

import com.couchbase.client.java.Bucket;
import com.couchbase.client.java.CouchbaseCluster;
import com.couchbase.client.java.document.JsonDocument;
import com.couchbase.client.java.document.json.JsonObject;

/**
 * 암호화 / 복호화 모듈
 *
 * @author ferenc.hechler
 */
public class TestCouchbase {


    /**
     * 암호화 / 복호화 생성
     *
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {

        // Create a cluster reference
        CouchbaseCluster cluster = CouchbaseCluster.create("54.65.65.73:11211");

        JsonObject content = JsonObject.empty();

        // Connect to the bucket and open it
        Bucket bucket = cluster.openBucket("mobile", "sv@13579");

        content = JsonObject.create().put("hello", "world");

        JsonDocument inserted = bucket.upsert(JsonDocument.create("mobile", content));

        JsonDocument found = bucket.get("mobile");

        System.out.println("Couchbase is the best database in the " + found.content().getString("hello"));

        // Create a JSON document and store it with the ID "helloworld"
        //JsonObject content = JsonObject.create().put("hello", "world1");
        //JsonDocument inserted = bucket.insert(JsonDocument.create("helloworld", content));

        // Read the document and print the "hello" field
        // JsonDocument found = bucket.get("helloworld");
        //System.out.println("Couchbase is the best database in the " + found.content().getString(""));

        // Close all buckets and disconnect
        cluster.disconnect();

    }

}
