em = emf.createEntityManager();
Query q = em.createQuery("SELECT p FROM Person p where p.id=:qId");
q.setParameter("qId", 1);
Person p = (Person)query.getSingleResult();